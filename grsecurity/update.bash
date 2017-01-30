#! /usr/bin/env bash

{ # run all code up to report in sublist, mainly to control output

#
# grsecurit/PaX testing patch
#

grsec_sigkey_fprint+=("DE94 52CE 46F4 2094 907F 108B 44D1 C0F8 2525 FE49")

grsec_rss_url=https://grsecurity.net/testing_rss.php
grsec_rss_file=grsec_rss.xml
test -f "$grsec_rss_file" || {
    wget -O "$grsec_rss_file" -- "$grsec_rss_url"
}

patch_src_url=$(grep -Po -- '(?<=<guid>)https://grsecurity.net/test/.*\.patch(?=</guid>)' "$grsec_rss_file")
patch_src_file=${patch_src_url##*/}
patch_src_name=${patch_src_file/.patch/}
patch_src_ver=(${patch_src_name//-/ })

grver=${patch_src_ver[1]}
grker=${patch_src_ver[2]}
grrev=${patch_src_ver[3]}

patch_sig_url=$patch_src_url.sig
patch_sig_file=${patch_sig_url##*/}

wget --continue -O "$patch_src_file" -- "$patch_src_url"
wget --continue -O "$patch_sig_file" -- "$patch_sig_url"
pgp_recvkeys "${grsec_sigkey_fprint[@]}"

pgp_verifysig "$patch_sig_file" "$patch_src_file"
patch_src_sha512=$(sha512file "$patch_src_file")

#
# Base kernel
#

kvers=(${grker//./ })
kver_xx=${kvers[0]}
kver_yy=${kvers[1]}
kver_zz=${kvers[2]}
kver=${kver_xx}.${kver_yy}${kver_zz:+.${kver_zz}}

kern_src_url="https://cdn.kernel.org/pub/linux/kernel/v${kver_xx}.x/linux-${kver}.tar.xz"
kern_src_file=${kern_src_url##*/}
wget --continue -O "$kern_src_file" -- "$kern_src_url"

kern_sig_url="${kern_src_url/.tar.xz/.tar.sign}"
kern_sig_file=${kern_sig_url##*/}
wget --continue -O "$kern_sig_file" -- "$kern_sig_url"

# See https://kernel.org/category/signatures.html
kern_src_fprint+=("ABAF 11C6 5A29 70B1 30AB E3C4 79BE 3E43 0041 1886")
kern_src_fprint+=("647F 2865 4894 E3BD 4571 99BE 38DB BDC8 6092 693E")

pgp_recvkeys "${kern_src_fprint[@]}"

xz -dc "$kern_src_file" | pgp_verifysig "$kern_sig_file" -
kern_src_sha512=$(sha512file "$kern_src_file")

} >&2

#
# Report
#

cat <<EOF
{
  grsecurity-testing-patch = {
    src = {
      url = $patch_src_url;
      sha512 = "$patch_src_sha512";
    };
    meta = {
      grver = "$grver";
      grrev = "$grrev";
      kver = "$grker";
      version = "$grver-$kver-$grrev";
    };
  };

  linux-grsecurity = {
    src = {
      url = $kern_src_url;
      sha512 = "$kern_src_sha512";
    };
    meta = {
      version = "$kver";
    };
  };
}
EOF
