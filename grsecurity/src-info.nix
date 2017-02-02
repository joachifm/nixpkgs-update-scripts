{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.8.17-201701151620.patch;
      sha512 = "34xwl5s6mrggdkv3dcfrc1ach55r8rj1lfkzfsj0py5anw4rs54bdxvk78fx5vww97jsfm0znkjrp0k2c0irkwy3ychgqs04gvq1mpl";
    };
    meta = {
      grver = "3.1";
      grrev = "201701151620";
      kver = "4.8.17";
      version = "3.1-4.8.17-201701151620";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.8.17.tar.xz;
      sha512 = "36063wv95qqyq7rrk2d7v6v6pklpcg61w09rq0dg2lqwi8in60n34vzmmf7cvgrrf4ly9pwmc1p82hq7ac0czb29rji4qnxki927d3r";
    };
    meta = {
      version = "4.8.17";
    };
  };
}
