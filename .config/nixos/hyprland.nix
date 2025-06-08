{
  config,
  pkgs,
  ...
}: {
  services.xserver.videoDrivers = ["nvidia"];

  hardware.graphics.enable = true;
  hardware.nvidia = {
    open = false;
    nvidiaSettings = true;

    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;

    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };

  environment.systemPackages = with pkgs; [
    hyprpolkitagent
    swaynotificationcenter
    hyprsunset
  ];

  fonts = {
    packages = with pkgs; [
      corefonts
      inter
      jetbrains-mono
      noto-fonts
    ];

    fontconfig = {
      defaultFonts = {
        serif = ["Inter" "Noto Serif"];
        sansSerif = ["Inter" "Noto Sans"];
        monospace = ["JetBrains Mono" "Noto Sans Mono"];
        emoji = ["Noto Color Emoji"];
      };

      localConf = ''
        <?xml version="1.0"?>
        <!DOCTYPE fontconfig SYSTEM "urn:fontconfig:fonts.dtd">
        <fontconfig>
          <alias>
            <family>Segoe UI</family>
            <prefer><family>Inter</family></prefer>
          </alias>
        </fontconfig>
      '';
    };
  };
}
