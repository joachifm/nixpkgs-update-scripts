{ fetchurl }:

{
  electrum = {
    src = fetchurl {
      url = https://download.electrum.org/2.7.18/Electrum-2.7.18.tar.gz;
      sha512 = "2zz8r1bzxzzpi1qwbxxfvfg16i6ri496vyhj1mgnj282dshdan4l0nykqslndzkxsryi9c7yamsxc6xdb57nis99wmzbr0wx4sb0gmn";
    };
    meta = {
      version = "2.7.18";
    };
  };
}
