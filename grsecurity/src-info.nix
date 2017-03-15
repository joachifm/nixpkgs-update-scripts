{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.15-201703150049.patch;
      sha512 = "1x02ncl94835n85kpp5bfvy6863sb482fw30x2pqszi4aivjc31i77vj135a7f508ni1b9rbbl8a0m3q4nb8gdbia75zcxbjdi9ij9m";
      sha256 = "0amwdv0brd1k1hcjr3av7zb1djk711mvlx1jm5rd5ffgw5llx5ng";
    };
    meta = {
      grver = "3.1";
      grrev = "201703150049";
      kver = "4.9.15";
      version = "3.1-4.9.15-201703150049";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.15.tar.xz;
      sha512 = "3p0cfjfmq4r04w6bjyi2aphq171yavv9m06b29wjsglb1bbkyiy4v278r99cq913msmdp3xs0ba1rkc36qp7cv7hxc29pj0w06ajwls";
      sha256 = "14sfacaqkk9c66zrl8wkmy5331hczgz5j65yms6pnpwwi82sq3c2";
    };
    meta = {
      version = "4.9.15";
      branch = "4.9";
    };
  };
}
