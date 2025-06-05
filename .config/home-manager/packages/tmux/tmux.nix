{
  config,
  pkgs,
  ...
}: {
  programs.tmux = {
    enable = true;

    baseIndex = 1;

    keyMode = "vi";
    escapeTime = 0;

    terminal = "xterm-256color";

    extraConfig = ''
      set -g status-style "bg=hotpink fg=#ffffff"
    '';
  };
}
