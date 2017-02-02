#! /usr/bin/env bash

. setup.bash
. subr.bash

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
echo 'with (import <nixpkgs>{});'
echo '{ }'
for srcinfo in */src-info.nix ; do
    echo "// scopedImport { inherit fetchurl; } ./${srcinfo}"
done
