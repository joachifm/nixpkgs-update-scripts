#! /usr/bin/env bash

set -e -o pipefail
shopt -s extglob nullglob

LC_ALL=C
export LC_ALL LC_COLLATE LC_MESSAGES

HOME=$PWD
export GNUPGHOME=$PWD/.gnupg
[[ -d "$GNUPGHOME" ]] || gpg --batch --list-keys &>/dev/null

if [[ -d /etc/ssl/certs ]] ; then
    capath=/etc/ssl/certs
else
    echo "unable to determine CA path" >&2
    exit 1
fi

CURLOPTS+=("--capath $capath")
CURLOPTS+=("-q" "-f" "-s" "-L")
export CURLOPTS
