{
  tor = {
    src = fetchurl {
      url = https://dist.torproject.org/tor-0.2.9.9.tar.gz;
      sha512 = "2dqr4inf0xah3ylg0ivzsnyx234lbghlzmk7692h4dyir3cbrkdwhd2qfm2nbsyzvn5mqb06qnc7l93rx3p2swia3qlbf83wpry3ryb";
    };
    meta = {
      version = "0.2.9.9";
    };
  };
}
