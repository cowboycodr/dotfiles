{pkgs, ...}: {
  services.xremap = {
    withHypr = true;

    config.modmap = [
      {
        name = "Global";
        remap = {"CapsLock" = "Esc";};
      }
    ];
  };

  home.file."Pictures/" = {
    source = ./assets; # Pulls in my wallpapers
    recursive = true;
  };

  home.packages = with pkgs; [
    # Hyprland packages
    hyprpaper
    hyprshot
  ];
}
