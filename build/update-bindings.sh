#!/bin/bash
# Regenerate ALL the bindings from the vendored Dear ImGui, in one go:
#
#   1. (optional) bump lib/imgui to a given docking tag:  ./build/update-bindings.sh v1.93.0-docking
#   2. regenerate the dcimgui C API with dear_bindings (auto-managed python venv)
#   3. regenerate every Haxe/C#/glue layer (gen/Gen.hx)
#   4. rebuild the prebuilt artifacts whose toolchain is available
#      (web wasm if emscripten is found, host native lib)
#   5. run the smoke tests (cpp + js + cs compile-check)
#
# Requirements: haxe, python3. Optional: emscripten (web), node (js smoke).

set -e
cd "$(dirname "$0")/.."

# 1. Optional Dear ImGui bump
if [ -n "$1" ]; then
    echo "==> Bumping lib/imgui to $1"
    (cd lib/imgui && git fetch --depth 1 origin "tag" "$1" && git checkout -f "$1")
fi
echo "==> Dear ImGui version: $(cd lib/imgui && git describe --tags 2>/dev/null || git rev-parse --short HEAD)"

# 2. dcimgui C API (dear_bindings needs python + ply; venv is created once)
VENV=.venv-dear-bindings
if [ ! -x "$VENV/bin/python" ]; then
    echo "==> Creating python venv for dear_bindings"
    python3 -m venv "$VENV"
    "$VENV/bin/pip" install --quiet ply
fi
echo "==> Regenerating dcimgui (dear_bindings)"
"$VENV/bin/python" lib/dear_bindings/dear_bindings.py \
    --generateunformattedfunctions \
    -o lib/dcimgui/dcimgui lib/imgui/imgui.h

# 3. Haxe/C#/glue layers
echo "==> Regenerating bindings (gen/Gen.hx)"
(cd gen && haxe gen.hxml)

# 4. Prebuilt artifacts (best effort, depending on available toolchains)
if command -v emcc > /dev/null 2>&1 || [ -n "$EMSDK" ] || [ -x "$HOME/emsdk/upstream/emscripten/emcc" ]; then
    echo "==> Building web wasm module"
    ./build/build-web.sh
else
    echo "==> SKIPPING web wasm (emscripten not found)"
fi
case "$(uname)" in
    Darwin)
        echo "==> Building macOS dylib"
        ./build/build-mac.sh
        ;;
    Linux)
        echo "==> Building Linux .so"
        ./build/build-linux.sh
        ;;
esac
echo "    (other platforms: run build/build-*.sh on their respective hosts)"

# 5. Smoke tests
echo "==> Smoke test: cpp"
(cd test/smoke && haxe smoke.hxml && rm -f imgui.ini && ./out/Smoke)
if command -v node > /dev/null 2>&1 && [ -f lib/prebuilt/web/dcimgui.js ]; then
    echo "==> Smoke test: js (node)"
    (cd test/smoke-js && haxe smokejs.hxml && rm -f imgui.ini && node run.js)
fi
echo "==> Smoke test: cs (compile-check)"
(cd test/smoke-cs && haxe smokecs.hxml)

echo ""
echo "All bindings regenerated and validated. Review the git diff, then commit."
