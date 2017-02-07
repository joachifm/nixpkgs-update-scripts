{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.8-201702060653.patch;
      sha512 = "1kammx0q0v37xw9z9zk7ppkixrwlr866dpfykjs4wy3ypcivnvkbk7dimyihna3vrylwgp5gq90ly7dj7d9gdblh83ccnq6n2m7ba43";
    };
    meta = {
      grver = "3.1";
      grrev = "201702060653";
      kver = "4.9.8";
      version = "3.1-4.9.8-201702060653";
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
