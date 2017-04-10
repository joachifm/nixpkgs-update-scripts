{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.21-201704091948.patch;
      sha512 = "1pa9vchnii319w3jarp4aclyjpwpk2s3ddi9facvy0r148xxqsl30hk2l0ihb9wwr9pz5a8l2z85skkkp65hpaz6fr9wmy9d1lb1hwh";
      sha256 = "0gn8ccvjzpl9pb4g3lnyycz13r2z2wy0zf3zk0h4x0spjvnaihvk";
    };
    meta = {
      grver = "3.1";
      grrev = "201704091948";
      kver = "4.9.21";
      version = "3.1-4.9.21-201704091948";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.21.tar.xz;
      sha512 = "1l1m23qdcz4pqnawq2xxiw8pwapgf84ggvb16696qfsh36dhwr62hmg0k5vip2c7yp74dls2gw9qcwhgv9dp7ki74xhzbhpv3148fjd";
      sha256 = "093cbrzdpj9f3ddxh2p1n05lrrs8yc6hh9jibbjv75vrpx4kfl4p";
    };
    meta = {
      version = "4.9.21";
      branch = "4.9";
    };
  };
}
