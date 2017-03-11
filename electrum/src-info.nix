{
  electrum = {
    src = fetchurl {
      url = https://download.electrum.org/2.8.0/Electrum-2.8.0.tar.gz;
      sha512 = "0f9xmnhwvnkcys89zl25kl12q94frnwjh607ifdxrmwxqrvm6dpcrw4g9j3k2cv1hmc6drpfma0pl6yqym2cyqaw1g09xkzcy28rvyw";
      sha256 = "1vz9cdvfhqjavpfb89z01i9j74f2q699b2dzbv2381wj68bswhv3";
    };
    meta = {
      version = "2.8.0";
    };
  };
}
