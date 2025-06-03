{
  config,
  pkgs,
  ...
}: {
  programs.tmux = {
    enable = true;
    baseIndex = 1;

    extraConfig = ''
      set-option -s escape-time 10
    '';
  };
}
