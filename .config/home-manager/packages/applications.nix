{pkgs, ...}: {
  programs.firefox.enable = true;
  programs.rofi.enable = true;
  programs.waybar.enable = true;

  home.packages = with pkgs; [
    brave
    discord
    kdePackages.dolphin
    pavucontrol
    prismlauncher
  ];
}
