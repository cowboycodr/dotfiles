{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    alejandra
    nixd
    rust-analyzer
    lua-language-server
    go
    gopls
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
