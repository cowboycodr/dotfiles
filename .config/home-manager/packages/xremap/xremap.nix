{
  config,
  pkgs,
  ...
}: {
  services.xremap = {
    withHypr = true;

    config.modmap = [
      {
        name = "Global";
        remap = {"CapsLock" = "Esc";};
      }
    ];
  };
}
