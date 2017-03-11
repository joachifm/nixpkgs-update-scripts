#! /usr/bin/env bash

sig_fprint+=("6694 D8DE 7BE8 EE56 31BE D950 2BD5 824B 7F94 70E6")
download_page_url=https://download.electrum.org

version=$(curl ${CURLOPTS[*]} --list-only -- "$download_page_url" \
    | grep -Po '<a href="\K([[:digit:]]+\.?)+' \
    | sort -Vu \
    | tail -n1)

src_name=Electrum-$version
src_file=$src_name.tar.gz
src_url=$download_page_url/$version/$src_file
sig_url=$src_url.asc
sig_file=$src_file.asc

fetchurl "$src_url" "$src_file" >/dev/null
fetchurl "$sig_url" "$sig_file" >/dev/null

pgp_recvkeys "${sig_fprint[@]}"
pgp_verifysig "$sig_file" "$src_file"
src_sha512=$(sha512file "$src_file")
src_sha256=$(sha256file "$src_file")

cat <<EOF
{
  electrum = {
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
