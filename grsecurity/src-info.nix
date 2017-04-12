{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.22-201704120836.patch;
      sha512 = "3320r4myn9y5wf2i2aybl1aapcl9sms0z6p343xh5x0pvaphsjhksnh7cndrq0qxc7fqdwzh9nw1vf84qy02cg5nf8bq025jpkfp7qh";
      sha256 = "0mdn0paavz124hcy09bi5f3sm14iwzb59jl2v0iw9hr2qv2f4dlm";
    };
    meta = {
      grver = "3.1";
      grrev = "201704120836";
      kver = "4.9.22";
      version = "3.1-4.9.22-201704120836";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.22.tar.xz;
      sha512 = "1hnbadbfvsqsdp7rd1zy07wi3wvryfr0cibk7jq0f35zfkpf4qyry9l1p28kca64p6zg2qb2arnr2p2qgbpx8dzsnwq6q072qddq4hg";
      sha256 = "0sh3p14y50f14m4m5pz2nvr48xgk8qr8zdhzgxi1143af1c1rnyv";
    };
    meta = {
      version = "4.9.22";
      branch = "4.9";
    };
  };
}
