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

  home.packages = with pkgs; [
    # Hyprland packages
    hyprpaper
    hyprshot
  ];
}
