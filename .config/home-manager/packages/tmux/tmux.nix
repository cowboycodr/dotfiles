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
      set-window-option -g mode-keys vi
      set -g status-bg black
      set -g default-terminal "screen-256color"
    '';
  };
}
