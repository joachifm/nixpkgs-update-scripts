#! /usr/bin/env bash

{
sig_pubkey="RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3"

test -f page.txt || {
    wget --spider -r --no-parent https://download.dnscrypt.org/dnscrypt-proxy 2>page.txt
}
src_url=$(grep -o 'https://download.dnscrypt.org/dnscrypt-proxy/dnscrypt-proxy-.*\.tar\.bz2$' page.txt | tail -n1)
src_file=${src_url##*/}
wget --continue -O "$src_file" -- "$src_url"

src_name=${src_file/.tar.bz2/}
src_vers=(${src_name//-/ })
version=${src_vers[2]}

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
