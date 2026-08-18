#!/bin/bash
# Build the dcimgui native library for the Unity target (macOS universal dylib).
#
# Compiles the vendored Dear ImGui (docking) + the dear_bindings C API into
# a self-contained dynamic library, loaded by the generated C# P/Invoke shim
# ([DllImport("dcimgui")]).
#
# Output: lib/prebuilt/mac/dcimgui.dylib (committed artifact).

set -e
cd "$(dirname "$0")/.."

mkdir -p lib/prebuilt/mac

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

FLAGS="-I lib/imgui -I lib/dcimgui -DIMGUI_DISABLE_OBSOLETE_FUNCTIONS -DNDEBUG -O2 -fvisibility=default -std=c++17"

clang++ $FLAGS $SOURCES -arch arm64 -arch x86_64 -dynamiclib \
    -install_name @rpath/dcimgui.dylib \
    -o lib/prebuilt/mac/dcimgui.dylib

echo "Built lib/prebuilt/mac/dcimgui.dylib ($(du -h lib/prebuilt/mac/dcimgui.dylib | cut -f1))"
lipo -info lib/prebuilt/mac/dcimgui.dylib
