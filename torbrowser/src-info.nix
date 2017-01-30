{ fetchurl }:
{
  tor-browser-en-US-linux32 = {
    src = fetchurl {
      url = https://dist.torproject.org/torbrowser/6.5/tor-browser-linux32-6.5_en-US.tar.xz;
      sha512 = "1df4pri611ck25k2g01fjfsj334k22d97dvz2bc2b796hvb01klagj97i43dvcncandqmhqzz0ni1f5zk05vnpky3zhi188q49cawbg";
    };
    meta = {
      version = "6.5";
      platform = "linux32";
      lang = "en-US";
    };
  };
  tor-browser-en-US-linux64 = {
    src = fetchurl {
      url = https://dist.torproject.org/torbrowser/6.5/tor-browser-linux64-6.5_en-US.tar.xz;
      sha512 = "0jj1mjjbjm8i70aglqqic3cjlq657ksxki618dpfyc3bp3jrmprv5fwymsg1vvb8jaqkbk3p2i6cx97nynqmi12rarabw1f5sdlbzrr";
    };
    meta = {
      version = "6.5";
      platform = "linux64";
      lang = "en-US";
    };
  };
}
