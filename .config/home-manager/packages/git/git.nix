{
  config,
  pkgs,
  ...
}: {
  programs.git = {
    enable = true;
    userEmail = "kian.p.m.007@gmail.com";
    userName = "cowboycodr";
  };
}
