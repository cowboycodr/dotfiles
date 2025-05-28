{
  config,
  pkgs,
  ...
}: {
  hardware.uinput.enable = true;
  boot.kernelModules = ["uinput"];
  services.udev.extraRules = ''
    KERNEL=="uinput", GROUP="INPUT", TAG+="uaccess"
  '';
}
