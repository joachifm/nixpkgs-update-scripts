{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.23-201704181901.patch;
      sha512 = "1cwiqrr707iz6rv72ikj6h3r6r5x325qlq21gsacsxslvk8igmj97amnqylsg32bjj0za072cb8lqf0zvrv7xzvlc9zjcwridd79vc2";
      sha256 = "0pb5xrylx3mks7rmh5iknzrz65cgmgsywzrwkxcn4qhn4cwkvakv";
    };
    meta = {
      grver = "3.1";
      grrev = "201704181901";
      kver = "4.9.23";
      version = "3.1-4.9.23-201704181901";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.23.tar.xz;
      sha512 = "0nf68gpgkxglrrrpvadbbc66bpd7vfl3820z5yv4zpz8lx56y02w4pn166aqffwxr60xw15mkp65ircnhclz9qcv4778wkbwd7pv1k0";
      sha256 = "1i8n70d0nfxin88mhg404pvll8yvm8v6766j2sdzw7sk5waiq4hs";
    };
    meta = {
      version = "4.9.23";
      branch = "4.9";
    };
  };
}
