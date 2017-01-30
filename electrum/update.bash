#! /usr/bin/env bash

sig_fprint+=("6694 D8DE 7BE8 EE56 31BE D950 2BD5 824B 7F94 70E6")

{
page=index.html
curl ${CURLOPTS[*]} -o "$page" --list-only -- https://download.electrum.org

version=$(grep -Po '<a href="\K([[:digit:]]+\.?)+' $page | sort -Vu | tail -n1)

src_name=Electrum-$version
src_file=$src_name.tar.gz
src_url=https://download.electrum.org/$version/$src_file
sig_url=$src_url.asc
sig_file=$src_file.asc

fetchurl "$src_url" "$src_file"
fetchurl "$sig_url" "$sig_file"

pgp_recvkeys "${sig_fprint[@]}"
pgp_verifysig "$sig_file" "$src_file"

src_sha512=$(sha512file "$src_file")
} >&2

cat <<EOF
{ fetchurl }:

{
  electrum = {
    src = fetchurl {
      url = $src_url;
      sha512 = "$src_sha512";
    };
    meta = {
      version = "$version";
    };
  };
}
EOF
