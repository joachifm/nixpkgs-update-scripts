#! /usr/bin/env bash

{
latest=$(curl ${CURLOPTS[*]} -- https://github.com/jedisct1/minisign/releases \
    | grep -Eo 'archive/[[:digit:]]\.[[:digit:]]\.tar\.gz' \
    | sort -Vu \
    | tail -n1)
src_url=https://github.com/jedisct1/minisign/$latest
src_file=${src_url##*/}
version=${src_file/.tar.gz/}

fetchurl "$src_url" "$src_file" >/dev/null
src_sha512=$(sha512zip "$src_file")
} >&2

cat <<EOF
{
  minisign = {
    src = fetchzip {
      url = $src_url;
      sha512 = "$src_sha512";
    };
    meta = {
      version = "$version";
    };
  };
}
EOF
