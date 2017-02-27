{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.13-201702270729.patch;
      sha512 = "07sbgvksjrvawisq4knjq34022blgg8f14blv22d37siplyamydarsykai5dks5573k61dv9q027jigxyamy50h0fd5ic8qpdp0y30c";
    };
    meta = {
      grver = "3.1";
      grrev = "201702270729";
      kver = "4.9.13";
      version = "3.1-4.9.13-201702270729";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.13.tar.xz;
      sha512 = "2mszr7n212ryaw5q2lj92766aqnjznkfr7ly04g2ggzk7cyiirrf1w37d9arzg3smn5695fb1frikacnbrmz2hsaia48kjhwgjbxn2h";
    };
    meta = {
      version = "4.9.13";
      branch = "4.9";
    };
  };
}
