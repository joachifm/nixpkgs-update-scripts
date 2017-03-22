{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.17-201703221829.patch;
      sha512 = "3br0xdjj95k8qnri83jj67s1lb4q6ws6irhdlr9kcyxj1384kipkfz8ciafs7zd3vqyfgsmdc56lmfpiyq5cx4dggy95qykx86ip787";
      sha256 = "0fgxyalb2qja6gf4gfs35kbp9vqbj419m74b9zzkpjis6g7c235x";
    };
    meta = {
      grver = "3.1";
      grrev = "201703221829";
      kver = "4.9.17";
      version = "3.1-4.9.17-201703221829";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.17.tar.xz;
      sha512 = "35mcvjl686xjgnbxrz2z84gg4q1m9y7wp541sg9k3jadlgsdyqrynz09j3lx3f5v40a83xmr5j3clavjaij16bl4imi716z7vjkfryx";
      sha256 = "0zxcz7h8sy58qibqh1n1f39diywmdl8hd9vr16z9rbpba1jw35ch";
    };
    meta = {
      version = "4.9.17";
      branch = "4.9";
    };
  };
}
