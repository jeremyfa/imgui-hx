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

# Deployment target MUST be pinned: without it, clang stamps the SDK of whatever
# machine happens to build, and the dylib then refuses to load on anything older
# (the previously committed artifact ended up with minos 26.0, i.e. macOS 26+ only).
MAC_MIN_OS="${MAC_MIN_OS:-11.0}"

FLAGS="-I lib/imgui -I lib/dcimgui -DIMGUI_DISABLE_OBSOLETE_FUNCTIONS -DNDEBUG -O2 -fvisibility=default -std=c++17"

clang++ $FLAGS $SOURCES -arch arm64 -arch x86_64 -dynamiclib \
    -mmacosx-version-min="$MAC_MIN_OS" \
    -install_name @rpath/dcimgui.dylib \
    -o lib/prebuilt/mac/dcimgui.dylib

echo "Built lib/prebuilt/mac/dcimgui.dylib ($(du -h lib/prebuilt/mac/dcimgui.dylib | cut -f1))"
lipo -info lib/prebuilt/mac/dcimgui.dylib
otool -l lib/prebuilt/mac/dcimgui.dylib | awk '/LC_BUILD_VERSION/{f=1} f&&/minos/{print "  minos "$2; exit}'
