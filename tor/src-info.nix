{
  tor = {
    src = fetchurl {
      url = https://dist.torproject.org/tor-0.3.0.6.tar.gz;
      sha512 = "36835qhpn5r5kkfglgqihb4wy344n0xvn8pkkrcqk0y8dfk3p7nh4d07ra7bci3jwldpffgxq10afy9k6ddmcbcb3jk5z1j1a63z61k";
      sha256 = "057vq8wagppmrlg85dgbsrk1v67yqpbi9n87s8gn0mdm7kli5rd3";
    };
    meta = {
      version = "0.3.0.6";
    };
  };
}
