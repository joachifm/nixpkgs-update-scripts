{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.24-201704210851.patch;
      sha512 = "398cnj7cnzp2vxy54y1538bgqrg2gbz2f7wnx2yhv5xgdwc9b87z9r0d7znk3ah79vrpr2m87394m6zk7d96sjq483y4nm9b1rz5pmn";
      sha256 = "1jbwdsgkighb339wv08an78250ig8x8qbf8n93ipmfzbb2k011ki";
    };
    meta = {
      grver = "3.1";
      grrev = "201704210851";
      kver = "4.9.24";
      version = "3.1-4.9.24-201704210851";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.24.tar.xz;
      sha512 = "3031ldw2f6dwkm3z1cn7rw8y4diq57rs3na64nzkw7xw4q74cfpzzp5866vf58y0fsyl8l2vgvwza7cdhxywmmxp7q0q5385jn8nnvd";
      sha256 = "01ig3hmalzkn783d5pppw1x473y0mma54rx7dfnany15n62w9csh";
    };
    meta = {
      version = "4.9.24";
      branch = "4.9";
    };
  };
}
