#! /usr/bin/env bash

sig_pubkey="RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3"

{
page=index.html
test -f "$page" || {
    curl -L -s --list-only -- https://download.dnscrypt.org/dnscrypt-proxy &>$page
}
src_file=$(grep -Eo 'dnscrypt-proxy-[[:digit:]]\.[[:digit:]]\.[[:digit:]]\.tar\.bz2' "$page" | sort -Vu | tail -n1)
src_url=https://download.dnscrypt.org/dnscrypt-proxy/$src_file
src_name=${src_file/.tar.bz2/}
src_vers=(${src_name//-/ })
version=${src_vers[2]}
wget --continue -O "$src_file" -- "$src_url"

sig_url=$src_url.minisig
sig_file=${sig_url##*/}
wget --continue -O "$sig_file" -- "$sig_url"

minisign -VP "$sig_pubkey" -x "$sig_file" -m "$src_file"
src_sha512=$(sha512file "$src_file")
} >&2

cat <<EOF
{
  dnscrypt-proxy = {
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
