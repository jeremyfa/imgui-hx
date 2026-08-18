#!/bin/bash
# Build dcimgui as a static xcframework for Unity iOS.
# Output: lib/prebuilt/ios/dcimgui.xcframework

set -e
cd "$(dirname "$0")/.."

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

TMP=$(mktemp -d)
mkdir -p "$TMP/device" "$TMP/sim"

# Device (arm64)
for src in $SOURCES; do
    clang++ $FLAGS -arch arm64 -isysroot "$(xcrun --sdk iphoneos --show-sdk-path)" -miphoneos-version-min=12.0 \
        -c "$src" -o "$TMP/device/$(basename "$src").o"
done
libtool -static -o "$TMP/device/libdcimgui.a" "$TMP/device/"*.o

# Simulator (arm64 + x86_64)
for src in $SOURCES; do
    clang++ $FLAGS -arch arm64 -arch x86_64 -isysroot "$(xcrun --sdk iphonesimulator --show-sdk-path)" -mios-simulator-version-min=12.0 \
        -c "$src" -o "$TMP/sim/$(basename "$src").o"
done
libtool -static -o "$TMP/sim/libdcimgui.a" "$TMP/sim/"*.o

rm -rf lib/prebuilt/ios/dcimgui.xcframework
mkdir -p lib/prebuilt/ios
xcodebuild -create-xcframework \
    -library "$TMP/device/libdcimgui.a" \
    -library "$TMP/sim/libdcimgui.a" \
    -output lib/prebuilt/ios/dcimgui.xcframework

rm -rf "$TMP"
echo "Built lib/prebuilt/ios/dcimgui.xcframework"
