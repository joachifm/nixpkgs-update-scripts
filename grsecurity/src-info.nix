{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.12-201702231830.patch;
      sha512 = "1455wpdy5lizdibs86llaxf087vggl921dn83pf4cnc9fbzc5mwa46vazahv9g8467bb335vgg5fcba2i0026s1h9vcsvyy6470m4i3";
    };
    meta = {
      grver = "3.1";
      grrev = "201702231830";
      kver = "4.9.12";
      version = "3.1-4.9.12-201702231830";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.12.tar.xz;
      sha512 = "37riipfdm8xw53598w15l3x0gy06rmp22j1yf5wql2d1fzhgf29x007axdi7swq4jnpihd934mvpfb1sy42srkinps0x5gvv65n00bs";
    };
    meta = {
      version = "4.9.12";
      branch = "4.9";
    };
  };
}
