{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.20-201703310823.patch;
      sha512 = "0pm3wmcip73imjjx13yar5l5bhpii45mjac5vb1snypmbwqmywmikiixqslq84i1yqw0c8pi822znkz7650dhxrmdmagy0yirwfdrhf";
      sha256 = "118nsy21z8q280qf39dbn2s3ahd7f0i1zx5rc6inbxmn13h1ish2";
    };
    meta = {
      grver = "3.1";
      grrev = "201703310823";
      kver = "4.9.20";
      version = "3.1-4.9.20-201703310823";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.20.tar.xz;
      sha512 = "3israf7zhq92wi0py8y299f7cz6z6xr0y4i5b1xvb46ljyx39jwrrdjrf5nxngz6c1641l9qalwzg5r15pp4gqyr09ilmwn8i7kbqwi";
      sha256 = "0h8km3z5c3qyhwq24dvh00j2jzfcyqdjjcjrrz5qvyrjvl30hrj8";
    };
    meta = {
      version = "4.9.20";
      branch = "4.9";
    };
  };
}
