#! /usr/bin/env bash

fetchurl() {
    local url=${1?URL} name=${2:-${url##*/}}
    wget --continue -O "$name" -- "$url"
    echo "$name"
}

sha512file() {
    command nix-hash --flat --type sha512 --base32 "${1?File}"
}

pgp_recvkeys() {
    command gpg --batch --keyserver hkp://keys.gnupg.net --recv-keys "${@}"
}

pgp_verifysig() {
    command gpg --batch --verify "${1?Signature file}" "${2:-'-'}"
}
