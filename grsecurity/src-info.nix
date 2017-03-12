{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.14-201703121245.patch;
      sha512 = "1h9d1vvfwxn8flzhbii7xd808cmhw8az895sk3fam2vjy5ls1mxvrmvw0z9nzx5sq2hgjg9adyz52y5nj2rza09n3m2gn4i7lid81hh";
      sha256 = "07v5r8hd67v4g6qfnvn7j78x9s08p590bkvm9lcvainip3v6vnm6";
    };
    meta = {
      grver = "3.1";
      grrev = "201703121245";
      kver = "4.9.14";
      version = "3.1-4.9.14-201703121245";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.14.tar.xz;
      sha512 = "0qc78s1j3mm03qs5m3dkc1ah9zchwdkmnkl1bl516dr9gy9i386all5c3f9bxniy8dd3lsk7bgfyqnigav1gyaki7vf9jh9ywqz58vd";
      sha256 = "0h5nnf9h00fsd7q66rapvwmfxs4pi0vjljk92ir5vid59hzk8kak";
    };
    meta = {
      version = "4.9.14";
      branch = "4.9";
    };
  };
}
