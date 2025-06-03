{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # runtimes
    nodejs_20

    # package managers
    cargo

    # compilers
    gcc
    go
    zig

    # language servers
    gopls
    lua-language-server
    nixd
    rust-analyzer
    svelte-language-server
    tree-sitter
    typescript-language-server
    zls

    # formatters
    alejandra
    nodePackages.prettier
    prettierd
    stylua
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
