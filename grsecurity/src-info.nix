{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.10-201702152052.patch;
      sha512 = "3whjlrm06r724q9lkycm2jalv3wm9bhxjlvgnglrfnc48rnv3b4j2m6gnq396pc3axnd2mpiinlwjwarw59dhs9qax9l7ddcc3cxd4k";
    };
    meta = {
      grver = "3.1";
      grrev = "201702152052";
      kver = "4.9.10";
      version = "3.1-4.9.10-201702152052";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.10.tar.xz;
      sha512 = "1mqlw5x7ryqb1jlhkn31p5xhilmqi55j5307i94xdj1xgn2411fiym5mpx1h8b0jc42g728jl896qplkrbd682vz5wci7fg4022ry81";
    };
    meta = {
      version = "4.9.10";
      branch = "4.9";
    };
  };
}
