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

    prettierd
    nodePackages.prettier

    zig
    zls

    tree-sitter

    nodejs
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
