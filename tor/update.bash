#! /usr/bin/env bash

{
# See https://www.torproject.org/docs/signing-keys.html
sig_fprint+=("B117 2656 DFF9 83C3 042B C699 EB5A 896A 2898 8BF5")
sig_fprint+=("F65C E37F 04BA 5B36 0AE6 EE17 C218 5258 19F7 8451")
sig_fprint+=("2133 BC60 0AB1 33E1 D826 D173 FE43 009C 4607 B1FB")

page=index.html
test -f $page || {
    curl -s https://dist.torproject.org --list-only &>$page
}
src_base=$(grep -Eo 'tor-([[:digit:]]+\.?)+\.tar\.gz' $page | sort -Vu | tail -n1)
src_file=$src_base
src_url=https://dist.torproject.org/$src_base

src_name=${src_base/.tar.gz/}
src_vers=(${src_name//-/ })
version=${src_vers[1]}

sig_url=$src_url.asc
sig_file=${sig_url##*/}

wget --continue -O "$src_file" -- "$src_url"
wget --continue -O "$sig_file" -- "$sig_url"

pgp_recvkeys "${sig_fprint[@]}"
pgp_verifysig "$sig_file" "$src_file"
src_sha512=$(sha512file "$src_file")
} >&2

cat <<EOF
{
  tor = {
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
