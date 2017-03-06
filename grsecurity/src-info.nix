{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.13-201703052141.patch;
      sha512 = "197n21975ifp2nkpl6d7v3r9fllw2l7pyd2h8cic7dnigy65a5jqx1sxhqryivijx3czf6hj173q999j218ihlg15p6a7aqjhkh90kf";
      sha256 = "1f0zpji4pd8zxymcpha6sxghzf2iz2wb602pf4bd3qw8x343a541";
    };
    meta = {
      grver = "3.1";
      grrev = "201703052141";
      kver = "4.9.13";
      version = "3.1-4.9.13-201703052141";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.13.tar.xz;
      sha512 = "2mszr7n212ryaw5q2lj92766aqnjznkfr7ly04g2ggzk7cyiirrf1w37d9arzg3smn5695fb1frikacnbrmz2hsaia48kjhwgjbxn2h";
      sha256 = "0s52hrs3wrsa1chzgcqpxwgb5kjmpfd82i964n9d2bmk9zn4liin";
    };
    meta = {
      version = "4.9.13";
      branch = "4.9";
    };
  };
}
