/*
Example of instantiating of the WebAssembly module and invoking its exported
function.

You can compile and run this example on Linux with:

   cargo build --release -p wasmtime
   cc examples/hello.c \
       -I crates/c-api/include \
       -I crates/c-api/wasm-c-api/include \
       target/release/libwasmtime.a \
       -lpthread -ldl -lm \
       -o hello
   ./hello

Note that on Windows and macOS the command will be similar, but you'll need
to tweak the `-lpthread` and such annotations as well as the name of the
`libwasmtime.a` file on Windows.
*/

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <wasm.h>
#include <wasmtime.h>

static void print_trap(wasm_trap_t *trap);

static wasm_trap_t *hello_callback(const wasm_val_t args[], wasm_val_t results[])
{
    printf("Calling back...\n");
    printf("> Hello World!\n");
    return NULL;
}

int main()
{
    int ret = 0;
    // Set up our compilation context. Note that we could also work with a
    // `wasm_config_t` here to configure what feature are enabled and various
    // compilation settings.
    printf("Initializing...\n");
    wasm_config_t *config = wasm_config_new();
    wasmtime_config_wasm_interface_types_set(config, true);

    wasm_engine_t *engine = wasm_engine_new_with_config(config);
    assert(engine != NULL);

    // With an engine we can create a *store* which is a long-lived group of wasm
    // modules.
    wasm_store_t *store = wasm_store_new(engine);
    assert(store != NULL);

    // Read our input file, which in this case is a wasm binary file.
    FILE *file = fopen("examples/string-to-memory.wasm", "r");
    assert(file != NULL);
    fseek(file, 0L, SEEK_END);
    size_t file_size = ftell(file);
    fseek(file, 0L, SEEK_SET);
    wasm_byte_vec_t wasm;
    wasm_byte_vec_new_uninitialized(&wasm, file_size);
    assert(fread(wasm.data, file_size, 1, file) == 1);
    fclose(file);

    // Now that we've got our binary webassembly we can compile our module.
    printf("Compiling module...\n");
    wasm_module_t *module = wasm_module_new(store, &wasm);
    wasm_byte_vec_delete(&wasm);
    assert(module != NULL);

    // With our callback function we can now instantiate the compiled module,
    // giving us an instance we can then execute exports from. Note that
    // instantiation can trap due to execution of the `start` function, so we need
    // to handle that here too.
    printf("Instantiating module...\n");
    wasm_trap_t *trap = NULL;
    const wasm_extern_t *imports = NULL;
    wasm_instance_t *instance = wasm_instance_new(store, module, NULL, &trap);
    if (instance == NULL)
    {
        print_trap(trap);
        goto free_module;
    }

    // Lookup our `run` export function
    printf("Extracting export...\n");
    wasm_extern_vec_t externs;
    wasm_instance_exports(instance, &externs);

    const wasm_module_t *constModule = module;
    wasm_exporttype_vec_t exports;
    wasm_module_exports(constModule, &exports);

    assert(externs.size == 2);
    wasm_extern_vec_t *funcs = malloc(exports.size*sizeof(wasm_extern_vec_t));
    for (int i = 0; i < exports.size; ++i) {
        wasm_exporttype_t *export_type = exports.data[i];
        const wasm_name_t *export_name = wasm_exporttype_name(export_type);
        wasm_extern_vec_t *func = &funcs[i];
        trap = wasm_get_export(instance, export_name, func);
        if (trap != NULL) print_trap(trap);
        printf("\n");
    }

    wasm_adapter_t *set = wasm_extern_as_adapter(funcs[0].data[0]);
    assert(set != NULL);

    // And call it!
    printf("Calling export `set`...\n");
    wasm_val_t args[1];
    args[0].kind = WASM_STRING;
    args[0].of.string = "Hello World";
    trap = wasm_adapter_call(set, args, NULL);
    // wasm_func_delete(run);
    if (trap != NULL)
    {
        print_trap(trap);
        goto free_instance;
    }

    wasm_adapter_t *get = wasm_extern_as_adapter(funcs[1].data[0]);
    assert(get != NULL);

    printf("Calling export `get`...\n");
    wasm_val_t results[1];
    trap = wasm_adapter_call(get, NULL, results);
    if (trap != NULL)
    {
        print_trap(trap);
        goto free_instance;
    }
    printf("%s\n", results[0].of.string);
    // Clean up after ourselves at this point
    printf("All finished!\n");
    ret = 0;

free_instance:
    wasm_extern_vec_delete(&externs);
    wasm_instance_delete(instance);
free_module:
    wasm_module_delete(module);
free_store:
    wasm_store_delete(store);
    wasm_engine_delete(engine);
    return ret;
}

static void print_trap(wasm_trap_t *trap)
{
    assert(trap != NULL);
    wasm_message_t message;
    wasm_trap_message(trap, &message);
    fprintf(stderr, "failed to instantiate module %.*s\n", (int)message.size, message.data);
    wasm_byte_vec_delete(&message);
    wasm_trap_delete(trap);
}
