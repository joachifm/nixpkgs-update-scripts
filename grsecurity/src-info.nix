{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.11-201702181444.patch;
      sha512 = "22yfq0w2hdhn0mhw0m2knm368f69z0qsf7vsfid7sw4m9ylmxfwzlnl92vfz15vldfl10hk78y59dcf8nv6jljh8gb5ycv4q61qlph6";
    };
    meta = {
      grver = "3.1";
      grrev = "201702181444";
      kver = "4.9.11";
      version = "3.1-4.9.11-201702181444";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.11.tar.xz;
      sha512 = "3lh2nrkq3254diqdjry857gmh39ijxxhd7h8563jdzv9i8awv564zajpdcr6bjpf5swyicjsylifym2b5ww41b0fp6z4pkns9mmppny";
    };
    meta = {
      version = "4.9.11";
      branch = "4.9";
    };
  };
}
