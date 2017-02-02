{
  dnscrypt-proxy = {
    src = fetchurl {
      url = https://download.dnscrypt.org/dnscrypt-proxy/dnscrypt-proxy-1.9.4.tar.bz2;
      sha512 = "3yr5jhina69n8kdf0lg4gfy6fm2scvfn38ah2y3w1c0qfg8bfxf69qgaakfiv731k4d906mdk2szgcwxwj2rcby57dx643qnn1qkjkg";
    };
    meta = {
      version = "1.9.4";
    };
  };
}
