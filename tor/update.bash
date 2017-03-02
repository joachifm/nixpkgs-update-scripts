#! /usr/bin/env bash

# See https://www.torproject.org/docs/signing-keys.html
sig_fprint+=(
    "B117 2656 DFF9 83C3 042B C699 EB5A 896A 2898 8BF5"
    "F65C E37F 04BA 5B36 0AE6 EE17 C218 5258 19F7 8451"
    "2133 BC60 0AB1 33E1 D826 D173 FE43 009C 4607 B1FB"
)

download_page_url=https://dist.torproject.org

src_base=$(curl ${CURLOPTS[*]} --list-only -- "$download_page_url" \
               | grep -Eo 'tor-([[:digit:]]+\.?)+\.tar\.gz' \
               | sort -Vu \
               | tail -n1)
src_file=$src_base
src_url=$download_page_url/$src_base

src_name=${src_base/.tar.gz/}
src_vers=(${src_name//-/ })
version=${src_vers[1]}

sig_url=$src_url.asc
sig_file=${sig_url##*/}

fetchurl "$src_url" "$src_file" >/dev/null
fetchurl "$sig_url" "$sig_file" >/dev/null

pgp_recvkeys "${sig_fprint[@]}"
pgp_verifysig "$sig_file" "$src_file"
src_sha512=$(sha512file "$src_file")
src_sha256=$(sha256file "$src_file")

cat <<EOF
{
  tor = {
    src = fetchurl {
      url = $src_url;
      sha512 = "$src_sha512";
      sha256 = "$src_sha256";
    };
    meta = {
      version = "$version";
    };
  };
}
EOF
