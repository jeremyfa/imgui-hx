#!/usr/bin/env bash
#
# Fetch and apply CI-built prebuilt artifacts to lib/prebuilt/, ready to review
# and commit.
#
#   build/apply-prebuilt.sh              # download from the latest CI run for HEAD (needs gh)
#   build/apply-prebuilt.sh <run-id>     # download from a specific workflow run
#   build/apply-prebuilt.sh <dir>        # apply already-downloaded artifacts
#
# The CI deliberately never commits binaries (a full set weighs ~15 MB and every
# commit stays in git history forever), so landing them is manual:
#
#   build/apply-prebuilt.sh
#   git diff --stat lib/prebuilt
#   git add lib/prebuilt && git commit -m 'Update prebuilt binaries'
#
# Each artifact tar carries the stamp.txt matching the inputs it was built from.
# If the inputs have changed since the CI run (newer commit touching
# lib/dcimgui/, the imgui submodule, a build script or build/toolchains.env),
# the platform is skipped with a warning: committing it would mark stale
# binaries as fresh. Set FORCE=1 to apply anyway.

set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."

WORKFLOW='prebuilt.yml'

# ---------------------------------------------------------------- fetch

# Resolve the GitHub repo from origin rather than letting gh guess: this clone
# has more than one remote (upstream fork + origin).
gh_repo() {
    git remote get-url origin \
        | sed -E 's#^(git@github\.com:|https://github\.com/)##; s#\.git$##'
}

# SECURITY GATE, not optional. Artifacts of a run triggered by a fork pull
# request are built from ATTACKER CONTROLLED code (the PR's version of the
# workflow, build scripts and sources), and the stamp.txt inside the tar is
# attacker controlled too, so the stamp check alone cannot be trusted for them.
# Only runs triggered by a push or a manual dispatch qualify: both require
# write access to this repository.
verify_run_trusted() {
    local run_id="$1" repo event head_repo
    repo=$(gh_repo)
    event=$(gh api "repos/$repo/actions/runs/$run_id" --jq '.event')
    head_repo=$(gh api "repos/$repo/actions/runs/$run_id" --jq '.head_repository.full_name')

    if [ "$head_repo" != "$repo" ]; then
        echo "error: run $run_id was built from '$head_repo', not from '$repo'." >&2
        echo "       Refusing to apply binaries built from a fork." >&2
        exit 1
    fi
    case "$event" in
        push|workflow_dispatch) ;;
        *)
            echo "error: run $run_id was triggered by '$event'." >&2
            echo "       Only push or workflow_dispatch runs are trusted sources of binaries." >&2
            exit 1
            ;;
    esac
}

download_run() {
    local run_id="$1" dest="$2" repo
    repo=$(gh_repo)
    verify_run_trusted "$run_id"
    echo "downloading artifacts of run $run_id from $repo..."
    # Prefer the merged artifact (one download); fall back to the per platform
    # ones for a run where the merge step did not produce it.
    if ! gh run download "$run_id" --repo "$repo" --name prebuilt-all --dir "$dest" 2>/dev/null; then
        gh run download "$run_id" --repo "$repo" --pattern 'prebuilt-*' --dir "$dest"
    fi
}

latest_run_for_head() {
    local repo sha run_id branch
    repo=$(gh_repo)
    sha=$(git rev-parse HEAD)

    # --event push: never consider pull_request runs (see verify_run_trusted;
    # a fork PR can even reuse a branch name like 'master', so the branch
    # fallback below would otherwise be spoofable).
    # The run that built exactly this commit is the only one whose stamps can
    # match this checkout.
    run_id=$(gh run list --repo "$repo" --workflow "$WORKFLOW" --commit "$sha" \
        --event push --status completed --limit 1 \
        --json databaseId --jq '.[0].databaseId // empty')

    if [ -z "$run_id" ]; then
        branch=$(git branch --show-current)
        if [ -n "$branch" ]; then
            run_id=$(gh run list --repo "$repo" --workflow "$WORKFLOW" --branch "$branch" \
                --event push --status completed --limit 1 \
                --json databaseId --jq '.[0].databaseId // empty')
            if [ -n "$run_id" ]; then
                echo "note: no completed run for HEAD ($(git rev-parse --short HEAD)), using the latest run of '$branch'" >&2
                echo "      (platforms whose inputs changed since will be skipped by the stamp check)" >&2
            fi
        fi
    fi

    printf '%s' "$run_id"
}

# ---------------------------------------------------------------- apply

apply_from_dir() {
    local dir="$1" tar platform artifact_stamp expected_stamp
    local applied='' skipped='' seen=' '

    while IFS= read -r tar; do

        platform=$(basename "$tar" .tar)
        case "$platform" in
            mac|ios|linux|windows|android|web) ;;
            *) echo "ignoring unrelated tar: $tar"; continue ;;
        esac

        # The per platform artifacts and the merged one may both be present:
        # apply each platform once.
        case "$seen" in *" $platform "*) continue ;; esac
        seen="$seen$platform "

        artifact_stamp=$(tar -xOf "$tar" "$platform/stamp.txt" 2>/dev/null || echo '(none)')
        expected_stamp=$(build/stamp.sh "$platform")

        if [ "$artifact_stamp" != "$expected_stamp" ] && [ "${FORCE:-0}" != '1' ]; then
            echo "SKIP $platform: built from different inputs than this checkout (FORCE=1 to apply anyway)"
            skipped="$skipped $platform"
            continue
        fi

        # Replace wholesale: leftovers would otherwise survive forever if an
        # output set ever shrinks or a slice gets renamed, and ceramic copies
        # the entire xcframework directory into Unity.
        rm -rf "lib/prebuilt/$platform"
        mkdir -p lib/prebuilt
        tar -C lib/prebuilt -xf "$tar"
        applied="$applied $platform"
        echo "applied $platform"

    done < <(find "$dir" -name '*.tar' -type f | LC_ALL=C sort)

    # The artifact round trip does not preserve unix modes: decide them here.
    find lib/prebuilt -type f \( -name '*.so' -o -name '*.dylib' \) -exec chmod 755 {} +
    find lib/prebuilt -type f ! -name '*.so' ! -name '*.dylib' -exec chmod 644 {} +

    echo
    if [ -z "$applied" ]; then
        echo 'nothing applied'
    else
        echo "applied:$applied"
        [ -n "$skipped" ] && echo "skipped:$skipped"
        echo
        git status --short lib/prebuilt || true
        echo
        echo 'review the diff, then: git add lib/prebuilt && git commit'
    fi
}

# ---------------------------------------------------------------- main

arg="${1:-}"

if [ -n "$arg" ] && [ -d "$arg" ]; then
    # A directory of already downloaded artifacts.
    apply_from_dir "$arg"
    exit 0
fi

command -v gh >/dev/null 2>&1 || {
    echo 'error: gh (GitHub CLI) is required to download artifacts.' >&2
    echo '       Or download them yourself and pass the directory:' >&2
    echo '       build/apply-prebuilt.sh <dir>' >&2
    exit 1
}

case "$arg" in
    '')
        run_id=$(latest_run_for_head)
        [ -n "$run_id" ] || {
            echo 'error: no completed CI run found for this commit or branch.' >&2
            exit 1
        }
        ;;
    *[!0-9]*)
        echo "usage: build/apply-prebuilt.sh [<run-id> | <dir>]" >&2
        exit 1
        ;;
    *)
        run_id="$arg"
        ;;
esac

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

download_run "$run_id" "$tmp"
apply_from_dir "$tmp"
