#!/bin/bash
# Build the dcimgui wasm module for the web target.
#
# Compiles the vendored Dear ImGui (docking) + the dear_bindings C API
# (dcimgui.cpp) + the generated JS glue (flattened by-value structs & field
# accessors) into a single self-contained js file (wasm embedded), loadable
# in browsers AND node (for headless smoke tests).
#
# Requires emscripten (emcc in PATH, or EMSDK env var pointing to the sdk).
# Output: lib/prebuilt/web/dcimgui.js (committed artifact - users don't need
# emscripten).

set -e
cd "$(dirname "$0")/.."

EMCC="${EMCC:-emcc}"
if ! command -v "$EMCC" > /dev/null 2>&1; then
    if [ -n "$EMSDK" ] && [ -x "$EMSDK/upstream/emscripten/emcc" ]; then
        EMCC="$EMSDK/upstream/emscripten/emcc"
    elif [ -x "$HOME/emsdk/upstream/emscripten/emcc" ]; then
        EMCC="$HOME/emsdk/upstream/emscripten/emcc"
    else
        echo "error: emcc not found (install emscripten or set EMSDK)" >&2
        exit 1
    fi
fi

mkdir -p lib/prebuilt/web

SOURCES="
lib/imgui/imgui.cpp
lib/imgui/imgui_demo.cpp
lib/imgui/imgui_draw.cpp
lib/imgui/imgui_tables.cpp
lib/imgui/imgui_widgets.cpp
lib/dcimgui/dcimgui.cpp
lib/dcimgui/dcimgui_js_glue.cpp
lib/dcimgui/dcimgui_extra_glue.cpp
lib/dcimgui/dcimgui_extra_ctors.cpp
"

# Core exports (the generated glue functions are EMSCRIPTEN_KEEPALIVE; the
# plain dcimgui C functions are exported through the generated list).
EXPORTS_FILE=lib/dcimgui/dcimgui_js_exports.txt
if [ ! -f "$EXPORTS_FILE" ]; then
    echo "error: $EXPORTS_FILE missing (run the generator: cd gen && haxe gen.hxml)" >&2
    exit 1
fi

"$EMCC" $SOURCES \
    -I lib/imgui \
    -I lib/dcimgui \
    -DIMGUI_DISABLE_OBSOLETE_FUNCTIONS \
    -DIMGUI_DISABLE_FILE_FUNCTIONS \
    -O2 \
    -sMODULARIZE=1 \
    -sEXPORT_NAME=DCImGui \
    -sSINGLE_FILE=1 \
    -sALLOW_MEMORY_GROWTH=1 \
    -sALLOW_TABLE_GROWTH=1 \
    -sENVIRONMENT=web,node \
    -sWASM_BIGINT=1 \
    -sEXPORTED_FUNCTIONS=@$EXPORTS_FILE \
    -sEXPORTED_RUNTIME_METHODS=HEAP8,HEAPU8,HEAP16,HEAPU16,HEAP32,HEAPU32,HEAPF32,HEAPF64,stringToUTF8,UTF8ToString,lengthBytesUTF8,addFunction,removeFunction \
    -o lib/prebuilt/web/dcimgui.js

echo "Built lib/prebuilt/web/dcimgui.js ($(du -h lib/prebuilt/web/dcimgui.js | cut -f1))"
