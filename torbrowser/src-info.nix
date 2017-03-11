{
  tor-browser-en-US-linux32 = {
    src = fetchurl {
      url = https://dist.torproject.org/torbrowser/6.5.1/tor-browser-linux32-6.5.1_en-US.tar.xz;
      sha512 = "3da2425hib3b45c77i6xhn83zsd87jvcqxfap6cxsyfh7scfr3pm6gl6z5hs82sxl3bwf94iwdxm7m926dzkf2ffrfnafgnrpgmzk6m";
      sha256 = "1zfghr01bhpn39wqaw7hyx7yap7xyla4m3mrgz2vi9a5qsyxmbcr";
    };
    meta = {
      version = "6.5.1";
      platform = "linux32";
      lang = "en-US";
    };
  };
  tor-browser-en-US-linux64 = {
    src = fetchurl {
      url = https://dist.torproject.org/torbrowser/6.5.1/tor-browser-linux64-6.5.1_en-US.tar.xz;
      sha512 = "0n4nlskxngxpcm5hm5m6xgl96q5ngyx01g9jsk9gja70ci46yhk818pjwwnmnn8asrg70ksqdw7hmqym6gbs0a5qi0qg2mc5innzqij";
      sha256 = "1p2bgavvyzahqpjg9vp14c0s50rmha3v1hs1c8zvz6fj8fgrhn0i";
    };
    meta = {
      version = "6.5.1";
      platform = "linux64";
      lang = "en-US";
    };
  };
}
