{
  tor-browser-en-US-linux32 = {
    src = fetchurl {
      url = https://dist.torproject.org/torbrowser/6.5.2/tor-browser-linux32-6.5.2_en-US.tar.xz;
      sha512 = "1bpsarb1fy54i01q84k2c8sq05cdr0hb2c3jaalz5qpifsyw4p1y1ji3i09qd2zba7mmmn2a5sy35qv6hkaibif2jf62w93pplj33n0";
      sha256 = "0micxgkbys0py4bj6csbc8xz4gq0x5v2zirgi38krnm5x5riqj3w";
    };
    meta = {
      version = "6.5.2";
      platform = "linux32";
      lang = "en-US";
    };
  };
  tor-browser-en-US-linux64 = {
    src = fetchurl {
      url = https://dist.torproject.org/torbrowser/6.5.2/tor-browser-linux64-6.5.2_en-US.tar.xz;
      sha512 = "1f1wx9y06awyz7m9mfyaq9qyjiwbmcbs0ablljdr7acbzchzha6nlgzp07qcm4pr79fh9v5iibw7ryg2c1yhsrwaahd0yq54wf7brjq";
      sha256 = "0jn98arczlgjigpmql1qg5b7izabv4zy4mji6vvcg3b8g1ma108r";
    };
    meta = {
      version = "6.5.2";
      platform = "linux64";
      lang = "en-US";
    };
  };
}
