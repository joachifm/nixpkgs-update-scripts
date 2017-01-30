#! /usr/bin/env bash

sig_fprint+=("6694 D8DE 7BE8 EE56 31BE D950 2BD5 824B 7F94 70E6")

{
page=index.html
test -f $page || {
    curl -s https://download.electrum.org --list-only &>$page
}
version=$(grep -Po '<a href="\K([[:digit:]]+\.?)+' $page| sort -Vu | tail -n1)

src_name=Electrum-$version
src_file=$src_name.tar.gz
src_url=https://download.electrum.org/$version/$src_file
sig_url=$src_url.asc
sig_file=$src_file.asc

wget --continue -O "$src_file" -- "$src_url"
wget --continue -O "$sig_file" -- "$sig_url"

pgp_recvkeys "${sig_fprint[@]}"
pgp_verifysig "$sig_file" "$src_file"

src_sha512=$(sha512file "$src_file")

} >&2

cat <<EOF
{
  electrum = {
    src = {
      url = $src_url;
      sha512 = "$src_sha512";
    };
    meta = {
      version = "$version";
    };
  };
}
EOF
