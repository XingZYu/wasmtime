// WebAssembly C API extension for Wasmtime

#ifndef WASMTIME_API_H
#define WASMTIME_API_H

#include <wasm.h>

#ifdef __cplusplus
extern "C" {
#endif

#define own

typedef uint8_t wasmtime_strategy_t;
enum wasmtime_strategy_enum { // Strategy
  WASMTIME_STRATEGY_AUTO,
  WASMTIME_STRATEGY_CRANELIFT,
  WASMTIME_STRATEGY_LIGHTBEAM,
};

typedef uint8_t wasmtime_opt_level_t;
enum wasmtime_opt_level_enum { // OptLevel
  WASMTIME_OPT_LEVEL_NONE,
  WASMTIME_OPT_LEVEL_SPEED,
  WASMTIME_OPT_LEVEL_SPEED_AND_SIZE,
};

#define WASMTIME_CONFIG_PROP(name, ty) \
    WASM_API_EXTERN void wasmtime_config_##name##_set(wasm_config_t*, ty);

WASMTIME_CONFIG_PROP(debug_info, bool)
WASMTIME_CONFIG_PROP(wasm_threads, bool)
WASMTIME_CONFIG_PROP(wasm_reference_types, bool)
WASMTIME_CONFIG_PROP(wasm_interface_types, bool)
WASMTIME_CONFIG_PROP(wasm_simd, bool)
WASMTIME_CONFIG_PROP(wasm_bulk_memory, bool)
WASMTIME_CONFIG_PROP(wasm_multi_value, bool)
WASMTIME_CONFIG_PROP(strategy, wasmtime_strategy_t)
WASMTIME_CONFIG_PROP(cranelift_debug_verifier, bool)
WASMTIME_CONFIG_PROP(cranelift_opt_level, wasmtime_opt_level_t)

///////////////////////////////////////////////////////////////////////////////

// Converts from the text format of WebAssembly to to the binary format.
//
// * `engine` - a previously created engine which will drive allocations and
//   such
// * `wat` - this it the input buffer with the WebAssembly Text Format inside of
//   it. This will be parsed and converted to the binary format.
// * `ret` - if the conversion is successful, this byte vector is filled in with
//   the WebAssembly binary format.
// * `error_message` - if the conversion fails, this is filled in with a
//   descriptive error message of why parsing failed. This parameter is
//   optional.
//
// Returns `true` if conversion succeeded, or `false` if it failed.
WASM_API_EXTERN bool wasmtime_wat2wasm(
    wasm_engine_t *engine,
    const wasm_byte_vec_t *wat,
    own wasm_byte_vec_t *ret,
    own wasm_byte_vec_t *error_message
);

#undef own

#ifdef __cplusplus
}  // extern "C"
#endif

#endif // WASMTIME_API_H
