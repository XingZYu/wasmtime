#!/bin/bash

# Shell script to run c examples
# Usage: ./examples/run_c_example.sh example_name

EXAMPLE=$1
C_FILE=$EXAMPLE.c
C_DIR=./examples
WASMTIME_ROOT=.

cc $C_DIR/$C_FILE -g \
    -I $WASMTIME_ROOT/crates/c-api/include \
    -I $WASMTIME_ROOT/crates/c-api/wasm-c-api/include \
    $WASMTIME_ROOT/target/release/libwasmtime.a \
    -lpthread -ldl -lm \
    -o interface-types && \
./$EXAMPLE

rm ./$EXAMPLE