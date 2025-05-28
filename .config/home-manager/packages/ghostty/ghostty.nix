{
  config,
  pkgs,
  ...
}: {
  xdg.configFile."ghostty/config".source = ./config;

  programs.ghostty = {
    enable = true;
  };
}
