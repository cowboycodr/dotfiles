{
  config,
  pkgs,
  ...
}: {
  programs.ghostty = {
    enable = true;

    settings = {
      font-family = "JetBrains Mono Medium";
      theme = "CutiePro";
      font-size = 16;
    };
  };
}
