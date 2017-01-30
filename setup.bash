#! /usr/bin/env bash

set -e -o pipefail
shopt -s extglob nullglob

LC_ALL=C
LC_COLLATE=C
LC_MESSAGES=C
export LC_ALL LC_COLLATE LC_MESSAGES

HOME=$PWD
export GNUPGHOME=$PWD/.gnupg
[[ -d "$GNUPGHOME" ]] || gpg --batch --list-keys &>/dev/null
