#!/bin/bash
# Build dcimgui native lib for Unity Linux (x86_64).
# Output: lib/prebuilt/linux/libdcimgui.so

set -e
cd "$(dirname "$0")/.."

mkdir -p lib/prebuilt/linux

# -static-libstdc++ -static-libgcc: the lib is loaded by Unity players on
# arbitrary distros, so it must not require a matching libstdc++ (a GLIBCXX_3.4.3x
# from the build machine would be an extra, avoidable version floor on top of
# glibc). Matches what build-android.sh already does.
# -s: strip, the debug info is dead weight in a committed artifact.
g++ -I lib/imgui -I lib/dcimgui -DIMGUI_DISABLE_OBSOLETE_FUNCTIONS -DNDEBUG -O2 \
    -fvisibility=default -std=c++17 -fPIC -shared -s \
    -static-libstdc++ -static-libgcc \
    lib/imgui/imgui.cpp lib/imgui/imgui_demo.cpp lib/imgui/imgui_draw.cpp \
    lib/imgui/imgui_tables.cpp lib/imgui/imgui_widgets.cpp lib/dcimgui/dcimgui.cpp \
    lib/dcimgui/dcimgui_js_glue.cpp lib/dcimgui/dcimgui_extra_glue.cpp lib/dcimgui/dcimgui_extra_ctors.cpp \
    -o lib/prebuilt/linux/libdcimgui.so

echo "Built lib/prebuilt/linux/libdcimgui.so"
