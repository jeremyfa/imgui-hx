#!/usr/bin/env bash
#
# Verify the freshly built artifacts of one platform before they are stamped.
#
#   build/ci-verify.sh <mac|ios|linux|windows|android|web>
#
# This is what makes a stamp mean "validated", and it is the ONLY validation the
# automated commit will ever get: a push made with GITHUB_TOKEN does not trigger
# a workflow, so nothing runs after the commit lands.
#
# It exists because a build script can succeed while producing nothing useful
# (build-windows.bat used to exit 0 when cl failed), and because ceramic's
# SetupUnity.hx silently skips a missing library, turning "no binary" into a
# runtime DllNotFoundException for the consumer instead of a build error here.

set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."

platform="${1:-}"

set -a
# shellcheck disable=SC1091
. build/toolchains.env
set +a

fail() {
    echo "verify($platform): $1" >&2
    exit 1
}

ok() {
    echo "  ok: $1"
}

# Substring test on captured text.
#
# Deliberately NOT `cmd | grep -q needle`: grep -q exits at the first match and
# closes the pipe, the producer dies with SIGPIPE (141), and `set -o pipefail`
# then reports the whole pipeline as failed even though the match succeeded.
has() {
    case "$2" in
        *"$1"*) return 0 ;;
        *)      return 1 ;;
    esac
}

PLATFORM=$(printf '%s' "$platform" | tr '[:lower:]' '[:upper:]')
eval "outputs=\${${PLATFORM}_OUTPUTS:-}"
[ -n "$outputs" ] || fail 'unknown platform'

# Every platform: the declared outputs must exist and not be empty.
for output in $outputs; do
    path="lib/prebuilt/$output"
    [ -e "$path" ] || fail "missing output $output"
    if [ -d "$path" ]; then
        [ -n "$(find "$path" -type f -print -quit)" ] || fail "empty directory $output"
    else
        [ -s "$path" ] || fail "empty file $output"
    fi
    ok "$output exists"
done

# The C entry point every binding layer calls first. If this is absent, the
# library is useless no matter how well it linked.
SYMBOL='ImGui_CreateContext'

case "$platform" in

    mac)
        lib='lib/prebuilt/mac/dcimgui.dylib'
        arches=$(lipo -info "$lib")
        has 'x86_64' "$arches" || fail 'missing x86_64 slice'
        has 'arm64' "$arches" || fail 'missing arm64 slice'
        ok 'universal (x86_64 + arm64)'
        symbols=$(nm -gU "$lib" 2>/dev/null || true)
        has "_$SYMBOL" "$symbols" || fail "does not export $SYMBOL"
        ok "exports $SYMBOL"
        # Deployment target must be the pinned one, not the build machine's SDK.
        minos=$(otool -l "$lib" | awk '/LC_BUILD_VERSION/{f=1} f&&/minos/{print $2; exit}')
        [ "$minos" = "$MAC_MIN_OS" ] || fail "deployment target is $minos, expected $MAC_MIN_OS"
        ok "minos $minos"
        # Loading it for real catches anything the static checks miss.
        python3 - "$lib" <<'PY' || fail 'dlopen/call failed'
import ctypes, sys
lib = ctypes.CDLL(sys.argv[1])
lib.ImGui_CreateContext.restype = ctypes.c_void_p
lib.ImGui_CreateContext.argtypes = [ctypes.c_void_p]
ctx = lib.ImGui_CreateContext(None)
assert ctx, 'ImGui_CreateContext returned NULL'
lib.ImGui_DestroyContext.argtypes = [ctypes.c_void_p]
lib.ImGui_DestroyContext(ctx)
PY
        ok 'loads and creates a context'
        ;;

    linux)
        lib='lib/prebuilt/linux/libdcimgui.so'
        header=$(readelf -h "$lib")
        has 'X86-64' "$header" || fail 'not x86_64'
        ok 'x86_64'
        # Must not drag in libstdc++: that would add a GLIBCXX floor from the
        # build machine on top of the glibc one.
        dynamic=$(readelf -d "$lib")
        has 'libstdc++' "$dynamic" && fail 'links libstdc++ dynamically (needs -static-libstdc++)'
        ok 'no dynamic libstdc++'
        symbols=$(nm -D --defined-only "$lib" || true)
        has " $SYMBOL" "$symbols" || fail "does not export $SYMBOL"
        ok "exports $SYMBOL"
        echo "  highest glibc requirement: $(objdump -T "$lib" | grep -oE 'GLIBC_2\.[0-9]+' | sort -uV | tail -1)"
        python3 - "$lib" <<'PY' || fail 'dlopen/call failed'
import ctypes, sys
lib = ctypes.CDLL(sys.argv[1])
lib.ImGui_CreateContext.restype = ctypes.c_void_p
lib.ImGui_CreateContext.argtypes = [ctypes.c_void_p]
ctx = lib.ImGui_CreateContext(None)
assert ctx, 'ImGui_CreateContext returned NULL'
lib.ImGui_DestroyContext.argtypes = [ctypes.c_void_p]
lib.ImGui_DestroyContext(ctx)
PY
        ok 'loads and creates a context'
        ;;

    windows)
        lib='lib/prebuilt/windows/dcimgui.dll'
        # dumpbin is not on PATH in git-bash (only inside a vcvars environment),
        # so locate it through vswhere, the same way the workflow finds vcvars.
        if command -v dumpbin >/dev/null 2>&1; then
            DUMPBIN=dumpbin
        else
            vswhere='/c/Program Files (x86)/Microsoft Visual Studio/Installer/vswhere.exe'
            [ -x "$vswhere" ] || fail 'neither dumpbin nor vswhere found (install VS Build Tools)'
            vsdir=$("$vswhere" -latest -products '*' \
                -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 \
                -property installationPath | tr -d '\r')
            DUMPBIN=$(find "$vsdir/VC/Tools/MSVC" -name dumpbin.exe -path '*Hostx64/x64*' 2>/dev/null | head -n 1)
            [ -n "$DUMPBIN" ] || fail 'dumpbin.exe not found under VC/Tools/MSVC'
        fi
        exports=$("$DUMPBIN" //exports "$lib")
        has "$SYMBOL" "$exports" || fail "does not export $SYMBOL"
        ok "exports $SYMBOL"
        # /MT means no vcruntime140/msvcp140 dependency on the player's machine.
        dependents=$("$DUMPBIN" //dependents "$lib" | tr '[:upper:]' '[:lower:]')
        has 'msvcp' "$dependents" && fail 'depends on msvcp (build with /MT)'
        has 'vcruntime' "$dependents" && fail 'depends on vcruntime (build with /MT)'
        ok 'no C++ runtime DLL dependency'
        echo '  dependents:'
        printf '%s\n' "$dependents" | grep -E '\.dll' | sed 's/^/    /' || true
        # Loading it for real catches anything the static checks miss (the
        # attribute lookup also proves the export table is usable by P/Invoke).
        PY=$(command -v python || command -v python3)
        [ -n "$PY" ] || fail 'python not found'
        "$PY" - "$lib" <<'PY' || fail 'LoadLibrary/call failed'
import ctypes, os, sys
lib = ctypes.CDLL(os.path.abspath(sys.argv[1]))
lib.ImGui_CreateContext.restype = ctypes.c_void_p
lib.ImGui_CreateContext.argtypes = [ctypes.c_void_p]
ctx = lib.ImGui_CreateContext(None)
assert ctx, 'ImGui_CreateContext returned NULL'
lib.ImGui_DestroyContext.argtypes = [ctypes.c_void_p]
lib.ImGui_DestroyContext(ctx)
PY
        ok 'loads and creates a context'
        ;;

    android)
        ndk="${ANDROID_NDK_ROOT:-${ANDROID_NDK_HOME:-}}"
        [ -n "$ndk" ] || fail 'ANDROID_NDK_ROOT not set'
        host='linux-x86_64'
        [ "$(uname)" = 'Darwin' ] && host='darwin-x86_64'
        readelf="$ndk/toolchains/llvm/prebuilt/$host/bin/llvm-readelf"
        nm="$ndk/toolchains/llvm/prebuilt/$host/bin/llvm-nm"
        for abi in arm64-v8a armeabi-v7a x86_64; do
            lib="lib/prebuilt/android/$abi/libdcimgui.so"
            case "$abi" in
                arm64-v8a)   want='AArch64' ;;
                armeabi-v7a) want='ARM' ;;
                x86_64)      want='X86-64' ;;
            esac
            header=$("$readelf" -h "$lib")
            has "$want" "$header" || fail "$abi is not $want"
            dynamic=$("$readelf" -d "$lib")
            has 'libstdc++' "$dynamic" && fail "$abi links libstdc++ dynamically"
            symbols=$("$nm" -D --defined-only "$lib" || true)
            has " $SYMBOL" "$symbols" || fail "$abi does not export $SYMBOL"
            # Stripped: debug sections in a committed artifact are dead weight.
            sections=$("$readelf" -S "$lib")
            has '.debug_info' "$sections" && fail "$abi is not stripped"
            ok "$abi: $want, stripped, exports $SYMBOL"
        done
        ;;

    ios)
        fw='lib/prebuilt/ios/dcimgui.xcframework'
        plutil -lint "$fw/Info.plist" >/dev/null || fail 'invalid Info.plist'
        ok 'Info.plist is valid'
        plist=$(cat "$fw/Info.plist")
        for slice in ios-arm64 ios-arm64_x86_64-simulator; do
            has "$slice" "$plist" || fail "Info.plist does not list $slice"
            [ -s "$fw/$slice/libdcimgui.a" ] || fail "missing $slice/libdcimgui.a"
            ok "$slice: $(lipo -info "$fw/$slice/libdcimgui.a" | sed 's/.*: //')"
        done
        # A static archive is not code signed: it gets linked into the consumer's
        # app, which is what carries the signature.
        symbols=$(nm "$fw/ios-arm64/libdcimgui.a" 2>/dev/null || true)
        has "_$SYMBOL" "$symbols" || fail "device slice does not define $SYMBOL"
        ok "device slice defines $SYMBOL"
        ;;

    web)
        lib='lib/prebuilt/web/dcimgui.js'
        # Single file build: the wasm must be embedded, not a sibling .wasm.
        content=$(head -c 400000 "$lib")
        has 'dcimgui.wasm' "$content" && fail 'expects an external .wasm (SINGLE_FILE lost?)'
        ok 'self contained (wasm embedded)'
        # The js bindings call the dcjs_* wrappers, not the raw C entry points
        # (structs cannot cross the wasm boundary by value), so that is what has
        # to be reachable on the instantiated module.
        node -e '
            const factory = require(process.argv[1]);
            factory().then(m => {
                const fn = m._dcjs_ImGui_CreateContext;
                if (typeof fn !== "function") throw new Error("_dcjs_ImGui_CreateContext not exported");
                const ctx = fn(0);
                if (!ctx) throw new Error("_dcjs_ImGui_CreateContext returned NULL");
                console.log("  ok: module instantiates and creates a context");
            }).catch(e => { console.error("  " + e.message); process.exit(1); });
        ' "$PWD/$lib" || fail 'wasm module failed to instantiate'
        ;;

    *)
        fail 'unknown platform'
        ;;

esac

echo "verify($platform): all checks passed"
