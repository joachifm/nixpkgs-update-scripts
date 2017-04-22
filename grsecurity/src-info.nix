{
  grsecurity-testing-patch = {
    src = fetchurl {
      url = https://grsecurity.net/test/grsecurity-3.1-4.9.24-201704220732.patch;
      sha512 = "0n9v066z3qh296fyvsg1gnygy7jd0cy0pnywxzglh58dnibl28q2ywjnp4ff30andzzq7rvjkk4n151xvs1n04pf2azkgz6igwfisg7";
      sha256 = "1cz3i095f8dmdq88gqz8cripsqalipc5wl2max975g9lvr2dn0kh";
    };
    meta = {
      grver = "3.1";
      grrev = "201704220732";
      kver = "4.9.24";
      version = "3.1-4.9.24-201704220732";
    };
  };

  linux-grsecurity = {
    src = fetchurl {
      url = https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.24.tar.xz;
      sha512 = "3031ldw2f6dwkm3z1cn7rw8y4diq57rs3na64nzkw7xw4q74cfpzzp5866vf58y0fsyl8l2vgvwza7cdhxywmmxp7q0q5385jn8nnvd";
      sha256 = "01ig3hmalzkn783d5pppw1x473y0mma54rx7dfnany15n62w9csh";
    };
    meta = {
      version = "4.9.24";
      branch = "4.9";
    };
  };
}
