{
src_url=https://grsecurity.net/stable/$(curl -fsSL https://grsecurity.net/download.php \
    | grep -Eo 'gradm-[[:digit:]]\.[[:digit:]]-[[:digit:]]+\.tar\.gz' \
    | sort -Vu \
    | tail -n1)
src_file=${src_url##*/}
src_base=${src_url/.tar.gz/}
src_vers=(${src_base//-/ })
version=${src_vers[1]}

echo $src_url

fetchurl "$src_url" "$src_file" >/dev/null
src_sha512=$(sha512file "$src_file")
} >&2

cat <<EOF
{
  gradm = {
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
