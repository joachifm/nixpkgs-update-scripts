#! /usr/bin/env bash

# See https://www.torproject.org/docs/signing-keys.html
sig_fprint+=(
    # Tor Browser Developers (signing key)
    "EF6E 286D DA85 EA2A 4BA7 DE68 4E2C 6E87 9329 8290"
)

# Platforms of interest
platforms+=("linux32" "linux64")

# Languages of interest
langs+=("en-US")

get_srcinfo_for() {
    local platform=$1 lang=$2

    local src_sha512
    local src_sha256
    local src_name=tor-browser-$platform-${version}_$lang
    local src_url=$src_url_base/$src_name.tar.xz
    local src_file=${src_url##*/}
    local sig_url=$src_url.asc
    local sig_file=${sig_url##*/}

    fetchurl "$src_url" "$src_file" >/dev/null
    fetchurl "$sig_url" "$sig_file" >/dev/null

    pgp_verifysig "$sig_file" "$src_file"
    src_sha512=$(sha512file "$src_file")
    src_sha256=$(sha256file "$src_file")

    cat <<EOF
  tor-browser-$lang-$platform = {
    src = fetchurl {
      url = $src_url;
      sha512 = "$src_sha512";
      sha256 = "$src_sha256";
    };
    meta = {
      version = "$version";
      platform = "$platform";
      lang = "$lang";
    };
  };
EOF
}

download_page_url=https://dist.torproject.org/torbrowser
version=$(curl ${CURLOPTS[*]} --list-only -- "$download_page_url" \
    | grep -Po '<a href\="\K([[:digit:]]+\.?)+/' \
    | sed 's,/$,,' \
    | sort -Vu \
    | tail -n1)
src_url_base=https://dist.torproject.org/torbrowser/$version
pgp_recvkeys "${sig_fprint[@]}"

echo '{'
for platform in "${platforms[@]}" ; do
    for lang in "${langs[@]}" ; do
        get_srcinfo_for "$platform" "$lang"
    done
done
echo '}'
