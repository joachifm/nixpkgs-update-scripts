#! /usr/bin/env bash

{
src_file=$(curl -s --list-only https://dev.gentoo.org/~vapier/dist/ \
               | grep -Eo 'pax-utils-[[:digit:]]\.[[:digit:]]\.[[:digit:]]\.tar\.xz' \
               | sort -Vu \
               | tail -n1)
src_url=https://dev.gentoo.org/~vapier/dist/$src_file

src_base=${src_file/.tar.xz/}
version=${src_base##*-}

fetchurl "$src_url" "$src_file" >/dev/null
src_sha512=$(sha512file "$src_file")
} >&2

cat <<EOF
{
  pax-utils = {
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
