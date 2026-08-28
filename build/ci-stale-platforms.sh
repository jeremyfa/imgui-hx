#!/usr/bin/env bash
#
# Decide which prebuilt platforms need rebuilding, and emit the CI build matrix.
#
#   build/ci-stale-platforms.sh
#
# Also useful locally to answer "what is out of date?" without touching anything.
#
# Environment:
#   PLATFORMS     stale (default) | all | comma separated list
#   HAS_SIGNING   true|false, whether an Apple Developer ID cert is available.
#                 When false, mac is SKIPPED rather than built: committing an
#                 unsigned dylib would downgrade the committed one, and building
#                 it without committing would leave its stamp permanently stale,
#                 so mac would be rebuilt on every single push.
#   GITHUB_OUTPUT         if set, `matrix` and `any` are written there
#   GITHUB_STEP_SUMMARY   if set, a decision table is appended there
#
# The matrix carries each platform's EXPECTED STAMP, computed here, on one OS.
# Build jobs never compute a stamp themselves: they write this value verbatim
# once their outputs are verified. That keeps a Windows or macOS runner from ever
# hashing a source file, which is what would otherwise make the digest
# platform dependent.

set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."

ALL_PLATFORMS='mac ios linux windows android web'

set -a
# shellcheck disable=SC1091
. build/toolchains.env
set +a

requested="${PLATFORMS:-stale}"
case "$requested" in
    ''|stale)
        candidates="$ALL_PLATFORMS"
        force=false
        ;;
    all)
        candidates="$ALL_PLATFORMS"
        force=true
        ;;
    *)
        candidates=$(printf '%s' "$requested" | tr ',' ' ')
        force=true
        ;;
esac

entries=''
summary=''
stale_list=''

for platform in $candidates; do

    case " $ALL_PLATFORMS " in
        *" $platform "*) ;;
        *) echo "unknown platform: $platform" >&2; exit 1 ;;
    esac

    PLATFORM=$(printf '%s' "$platform" | tr '[:lower:]' '[:upper:]')
    eval "runner=\${${PLATFORM}_RUNNER}"
    eval "outputs=\${${PLATFORM}_OUTPUTS}"

    want=$(build/stamp.sh "$platform")
    have='(none)'
    if [ -f "lib/prebuilt/$platform/stamp.txt" ]; then
        have=$(cat "lib/prebuilt/$platform/stamp.txt")
    fi

    # A stamp alone is not proof: the artifact itself may have been removed by a
    # bad merge or a manual rm. Without this check a missing binary would look
    # fresh forever, since the CI's own commits do not re-trigger the CI.
    missing=false
    for output in $outputs; do
        if [ ! -e "lib/prebuilt/$output" ]; then
            missing=true
        fi
    done

    if [ "$platform" = 'mac' ] && [ "${HAS_SIGNING:-false}" != 'true' ]; then
        decision='skip (no signing cert)'
    elif [ "$force" = 'true' ]; then
        decision='build (forced)'
    elif [ "$missing" = 'true' ]; then
        decision='build (output missing)'
    elif [ "$want" != "$have" ]; then
        decision='build (inputs changed)'
    else
        decision='fresh'
    fi

    case "$decision" in
        build*)
            [ -n "$entries" ] && entries="$entries,"
            entries="$entries{\"platform\":\"$platform\",\"runner\":\"$runner\",\"stamp\":\"$want\"}"
            stale_list="$stale_list $platform"
            ;;
    esac

    summary="$summary| $platform | \`$(printf '%.12s' "$want")\` | \`$(printf '%.12s' "$have")\` | $decision |
"

done

any=false
[ -n "$entries" ] && any=true

matrix="{\"include\":[$entries]}"

echo "matrix=$matrix"
echo "any=$any"
echo "platforms=$(printf '%s' "${stale_list# }")"

if [ -n "${GITHUB_OUTPUT:-}" ]; then
    {
        echo "matrix=$matrix"
        echo "any=$any"
        echo "platforms=$(printf '%s' "${stale_list# }")"
    } >> "$GITHUB_OUTPUT"
fi

if [ -n "${GITHUB_STEP_SUMMARY:-}" ]; then
    {
        echo '### Prebuilt platform status'
        echo
        echo '| platform | expected | committed | decision |'
        echo '|---|---|---|---|'
        printf '%s' "$summary"
        echo
        if [ "$any" = 'false' ]; then
            echo 'Everything up to date, nothing to build.'
        fi
    } >> "$GITHUB_STEP_SUMMARY"
fi
