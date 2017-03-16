{
  libsodium = {
    src = fetchurl {
      url = https://download.libsodium.org/libsodium/releases/libsodium-1.0.12.tar.gz;
      sha512 = "0dr0qbn7lgxci11j8b72n0h8z1sqsdlxbmr1bw4n4f0ffj3zmdkl1ij15pqs7rrjg9adfz5vj0ri12m2ddizbk3aja91k1blh6rcqqy";
      sha256 = "159givfh5jgli3cifxgssivkklfyfq6lzyjgrx8h4jx5ncdqyr5q";
    };
    meta = {
      version = "1.0.12";
    };
  };
}
