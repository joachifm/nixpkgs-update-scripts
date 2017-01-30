#! /usr/bin/env bash

fetchurl() {
    local url=${1?URL}
    local name=${2:-${url##*/}}

    local part=$name.part
    local opts=()

    # exit early if destination exists
    if [[ -s "$name" ]] ; then
        echo "$name"
        return
    fi

    # decide whether to resume partial transfer
    if [[ ! -e "$name" ]] && [[ -e "$part" ]] ; then
        opts+=("-C -")
    fi

    # begin transfer
    curl ${CURLOPTS[*]} ${opts[*]} -o "$part" -- "$url"
    ret=$?

    # process return code
    case "$ret" in
        0)
            mv "$part" "$name"
            echo "$name"
            ;;
        *)
            return $ret
    esac
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
