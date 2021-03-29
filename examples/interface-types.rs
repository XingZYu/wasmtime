//! Small example of how to instantiate a wasm module that imports one function,
//! showing how you can fill in host functionality for a wasm module.

// You can execute this example with `cargo run --example interface-types`

use anyhow::Result;
use std::error::Error;
use wasmtime::*;

fn main() -> Result<()> {
    // Configure the initial compilation environment, creating the global
    // `Store` structure. Note that you can also tweak configuration settings
    // with a `Config` and an `Engine` if desired.
    println!("Initializing...");
    let engine = Engine::new(Config::new()
        .wasm_interface_types(true)
        .wasm_reference_types(true)
    );
    let store = Store::new(&engine);

    // Compile the wasm binary into an in-memory instance of a `Module`.
    println!("Compiling module...");

    let module = Module::from_file(&store, "examples/string-to-memory.wasm")?;
    
    // println!("{:#?}", module.name());
    // println!("{:#?}", module.exports());
    // println!("{:#?}", module.imports());
    // println!("{:#?}", module.adapters());

    // After we have a compiled `Module` we can then instantiate it, creating
    // an `Instance` which we can actually poke at functions on.
    
    println!("Instantiating module...");
    let instance = Instance::new(&module, &[])?;

    // The `Instance` gives us access to various exported functions and items,
    // which we access here to pull out our `answer` exported function and
    // run it.
    println!("Extracting export 'set'...");

    let params = [Val::String("Hello world".to_string())];
    match run("set", &instance, &params) {
        Ok(_) => (),
        Err(e) => println!("Error occured: {}", e),
    };

    
    println!("Extracting export 'get'...");
    match run("get", &instance, &[]) {
        Ok(_) => (),
        Err(e) => println!("Error occured: {}", e),
    };

    Ok(())
}

fn run(func_name: &str, instance: &Instance, params: &[Val]) -> Result<Vec<String>, Box<dyn Error>> {
    let answer = instance.get_export(&func_name)
        .and_then(|e| e.adapter())
        .ok_or(anyhow::format_err!("failed to find `run` function export"))?;

    println!("Calling export...");
    let res_string: Vec<String>;

    let result = answer.call(&params)?;

    println!("Call into Func {} succeed", func_name);
    if result.len() > 0 {
        res_string = result.iter()
            .map(|s| print_result(&s))
            .collect()
    }
    else {
        res_string = vec!("Empty result".to_string());
    }
    Ok(res_string)
}

fn print_result(value: &Val) -> String {
    let rust_val = match value {
        Val::I32(s) => format!("{}", value.unwrap_i32()),
        Val::String(s) => value.unwrap_string().to_string(),
        _ => unimplemented!("Not implemented types"),
    };
    println!("{}", rust_val);
    rust_val
}