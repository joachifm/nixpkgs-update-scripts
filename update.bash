#! /usr/bin/env bash

set -e -o pipefail
shopt -s extglob nullglob

. subr.bash

HOME=$PWD
export GNUPGHOME=$PWD/.gnupg
gpg --batch --list-keys &>/dev/null

for name in "${@}" ; do
    if [[ -x "$name"/update.bash ]] ; then
        echo "updating $name ..." >&2
        (cd "$name" && . update.bash) >"$name"/src-info.nix
    else
        echo "unknown updater: $name" >&2
        exit 2
    fi
done

# Generate a top-level src-info.nix
exec 1>src-info.nix
echo '{ }'
for srcinfo in */src-info.nix ; do
    echo "// (import ./${srcinfo})"
done
