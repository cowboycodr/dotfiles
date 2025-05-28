{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    hyprpaper
    hyprshot
  ];

  # xdg.configFile."hypr/hyprland.conf".source = ./hyprland.conf;
  # xdg.configFile."hypr/hyprpaper.conf".source = ./hyprpaper.conf;

  # `home.sessionVariables` doesn't work with Wayland; defining them in hyprland.conf is a working alternative
  # home.sessionVariables = {
  #   XCURSOR_THEME = "Adwaita";
  #   XCURSOR_SIZE = "24";
  #
  #   XDG_PICTURES_DIR = "~/Pictures";
  #   HYPRSHOT_DIR = "~/Pictures/Screenshots";
  # };
}
