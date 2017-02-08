{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.8-201702071801.patch;
      sha512 = "05hxn9jzkywd15iqjd7lykj0f9czw0kq1rs7krxnrk4lhr4k4ahbhq4330mw4pwcvln4ys25dw7mbljn9zvymb7b1kc3m301rrbgj5f";
    };
    meta = {
      grver = "3.1";
      grrev = "201702071801";
      kver = "4.9.8";
      version = "3.1-4.9.8-201702071801";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.8.tar.xz;
      sha512 = "39r4hq5f70nc1v8qq4qvnd0fq98h4akm6y6zp7ml6mi5knz7v6zm86ykq87a0ph3zh23msimi4155354qcsmsxp4cbd22cq8s1w86ds";
    };
    meta = {
      version = "4.9.8";
      branch = "4.9";
    };
  };
}
