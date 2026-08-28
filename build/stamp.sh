#!/usr/bin/env bash
#
# Print the input digest for one prebuilt platform.
#
#   build/stamp.sh <mac|ios|linux|windows|android|web>
#
# The CI (.github/workflows/prebuilt.yml) uses this to decide whether
# lib/prebuilt/<platform>/ is stale, by comparing this digest with the one stored
# in lib/prebuilt/<platform>/stamp.txt.
#
# Why hash INPUTS and not the produced binaries: the binaries are not
# reproducible bit for bit (embedded timestamps and paths, the code signature,
# emcc embedding a base64 wasm, xcodebuild/libtool metadata). Comparing output
# bytes would therefore report "changed" on every single run.
#
# THE INVARIANT THAT MAKES THE CI IDEMPOTENT: lib/prebuilt/** is never an input
# here. So the commit the CI makes, which only ever touches lib/prebuilt/**,
# cannot invalidate the stamp it just wrote. The next run recomputes the same
# digests, finds them unchanged, and builds and commits nothing.
#
# Inputs are read as GIT BLOB SHAS, not as working-tree bytes, so the digest is
# independent of checkout-time normalization (a Windows checkout converting LF to
# CRLF would otherwise never agree with a Linux one). See also .gitattributes.
#
# Note: stamp.sh deliberately does NOT hash itself. Editing a comment in here
# would otherwise invalidate all six platforms and cost a ~15 MB commit. To force
# a global rebuild on purpose, bump COMMON_BUILD_REVISION in build/toolchains.env.

set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."

platform="${1:-}"
case "$platform" in
    mac|ios|linux|windows|android|web) ;;
    *)
        echo "usage: build/stamp.sh <mac|ios|linux|windows|android|web>" >&2
        exit 1
        ;;
esac

PLATFORM=$(printf '%s' "$platform" | tr '[:lower:]' '[:upper:]')

sha256() {
    if command -v sha256sum >/dev/null 2>&1; then
        sha256sum
    else
        shasum -a 256
    fi | cut -d' ' -f1
}

# Canonical git blob id of a file's CURRENT content. Using git's own object id
# rather than a raw sha256 of the bytes means the value is exactly what the file
# will have once committed, and it works for a file that is new or locally
# modified (unlike reading HEAD:<path>). Combined with `* -text` in
# .gitattributes there is no eol filtering, so this is stable across platforms.
blob() {
    git hash-object -- "$1"
}

# The sources actually compiled into every platform's binary. The five
# lib/imgui/*.cpp files are covered by the submodule commit below.
sources="
lib/dcimgui/dcimgui.h
lib/dcimgui/dcimgui.cpp
lib/dcimgui/dcimgui_extra.h
lib/dcimgui/dcimgui_extra_glue.cpp
lib/dcimgui/dcimgui_extra_ctors.cpp
lib/dcimgui/dcimgui_js_glue.cpp
"

# Only build-web.sh consumes the exports list.
if [ "$platform" = 'web' ]; then
    sources="$sources lib/dcimgui/dcimgui_js_exports.txt"
fi

if [ "$platform" = 'windows' ]; then
    build_script='build/build-windows.bat'
else
    build_script="build/build-$platform.sh"
fi

{
    printf 'platform %s\n' "$platform"
    # The imgui commit that will be compiled. Read from the working tree when the
    # submodule is checked out, otherwise from the gitlink recorded in the commit
    # (which lets the CI decide staleness without fetching the submodule at all).
    if [ -e lib/imgui/.git ]; then
        printf 'imgui %s\n' "$(git -C lib/imgui rev-parse HEAD)"
    else
        printf 'imgui %s\n' "$(git rev-parse 'HEAD:lib/imgui')"
    fi

    for file in $sources $build_script; do
        printf '%s %s\n' "$file" "$(blob "$file")"
    done | LC_ALL=C sort

    # Toolchain pins: the COMMON_* lines plus this platform's own lines, so a
    # bump is scoped to the platforms it actually affects.
    grep -E "^(COMMON|$PLATFORM)_" build/toolchains.env | LC_ALL=C sort
} | sha256
