{
  config,
  pkgs,
  ...
}: {
  programs.ghostty = {
    enable = true;

    settings = {
      theme = "CutiePro";

      font-family = "JetBrains Mono Medium";
      font-size = 16;

      window-padding-x = 0;
      window-padding-y = 0;
    };
  };
}
