{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.16-201703180820.patch;
      sha512 = "114yqjffxnf412ypaq91r732mi4im2qakj07g0nbqx1qyg319qag5ckc5438kcny3qhzb9wyrwr6mhza51cq7js40ps2aw7alwjfgql";
      sha256 = "0kqbh4z7dzkn79hg5m5h5f7h0yv5w3s6jbqbgkxgpdznv95fcdkn";
    };
    meta = {
      grver = "3.1";
      grrev = "201703180820";
      kver = "4.9.16";
      version = "3.1-4.9.16-201703180820";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.16.tar.xz;
      sha512 = "3fhzfdiziad5blzcqfbrxjphcygmhd7jzrricpkn7mvg069csrq0yvlbsxksqii0ahk77wzs1nmkfx138y21v4745dk6rf0438jv7md";
      sha256 = "1r5spbinz8g3iclm9039cddaamj8q5vy455nnr3pvrmxbj8l9d23";
    };
    meta = {
      version = "4.9.16";
      branch = "4.9";
    };
  };
}
