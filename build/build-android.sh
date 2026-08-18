#!/bin/bash
# Build dcimgui native libs for Unity Android (.so per ABI).
# Requires ANDROID_NDK_ROOT (or ANDROID_NDK_HOME) pointing to an NDK (r23+).
# Output: lib/prebuilt/android/<abi>/libdcimgui.so

set -e
cd "$(dirname "$0")/.."

NDK="${ANDROID_NDK_ROOT:-$ANDROID_NDK_HOME}"
if [ -z "$NDK" ]; then
    echo "error: set ANDROID_NDK_ROOT to your Android NDK path" >&2
    exit 1
fi

HOST=darwin-x86_64
[ "$(uname)" = "Linux" ] && HOST=linux-x86_64
TOOLCHAIN="$NDK/toolchains/llvm/prebuilt/$HOST/bin"
API=23

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
FLAGS="-I lib/imgui -I lib/dcimgui -DIMGUI_DISABLE_OBSOLETE_FUNCTIONS -DNDEBUG -O2 -fvisibility=default -fPIC -std=c++17 -static-libstdc++"

for ABI_TARGET in "arm64-v8a aarch64-linux-android" "armeabi-v7a armv7a-linux-androideabi" "x86_64 x86_64-linux-android"; do
    set -- $ABI_TARGET
    ABI=$1
    TARGET=$2
    mkdir -p "lib/prebuilt/android/$ABI"
    "$TOOLCHAIN/clang++" --target=$TARGET$API $FLAGS $SOURCES -shared \
        -o "lib/prebuilt/android/$ABI/libdcimgui.so"
    echo "Built lib/prebuilt/android/$ABI/libdcimgui.so"
done
