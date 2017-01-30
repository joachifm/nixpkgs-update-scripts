#! /usr/bin/env bash

set -e -o pipefail

. subr.bash

HOME=$PWD
export GNUPGHOME=$PWD/.gnupg
gpg --batch --list-keys &>/dev/null

updated=()
for name in "${@}" ; do
    if [[ -x "$name"/update.bash ]] ; then
        echo "updating $name ..." >&2
        (cd "$name" && . update.bash) >"$name"/src-info.nix
        updated+=("$name")
    else
        echo "unknown updater: $name" >&2
        exit 2
    fi
done

# Generate a top-level src-info.nix
if [[ ${#updated[@]} -lt 1 ]] ; then
    exit 0
fi
exec 1>src-info.nix
echo '{ }'
for name in "${updated[@]}" ; do
    echo "// (import ./${name}/src-info.nix)"
done
