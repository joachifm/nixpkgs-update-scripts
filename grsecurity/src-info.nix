{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.18-201703261106.patch;
      sha512 = "2zr38i847fpxi631kv4l88zgj9xzc8fvyjyk5db4d53n35pp7vxdw4iq89wp6z1n5hmzwdp5kqvq3z3hn9va3yvhh88aq0dza48lgfx";
      sha256 = "0j6q8b3pg1j7qvjz70q38gb8063pa2iha83xg19dv24wsfz5yc89";
    };
    meta = {
      grver = "3.1";
      grrev = "201703261106";
      kver = "4.9.18";
      version = "3.1-4.9.18-201703261106";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.18.tar.xz;
      sha512 = "0l60ny68qwjf585x84yxipndv2g00g08rm4k6hd7k8s93kf3h7lvspsbdg1g1nw50g8dc3n0w31pqads7b2ha6zf39jh77cx7449rn3";
      sha256 = "1lb18b29ykia9v2ryj1w6chwh19hmv6ynfjhl9p66rsnm09fl3m1";
    };
    meta = {
      version = "4.9.18";
      branch = "4.9";
    };
  };
}
