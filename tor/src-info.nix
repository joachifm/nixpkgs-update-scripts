{
  tor = {
    src = fetchurl {
      url = https://dist.torproject.org/tor-0.2.9.10.tar.gz;
      sha512 = "3hvfksxr76j2xmp8a45hlnnywl8nxfpi9nvv8crxkm4d80l7ap9gf3i3m29jyjymgdfl2vp08znz2f2dc7dgw1na4b08vs032plz361";
      sha256 = "0h8kpn42mgpkzmnga143hi8nh0ai65ypxh7qhkwbb15j3wz2h4fn";
    };
    meta = {
      version = "0.2.9.10";
    };
  };
}
