{pkgs, ...}: {
  home.packages = with pkgs; [
    # runtimes
    bun
    nodejs_20

    # package managers
    rustup

    # compilers
    gcc
    go
    zig

    # language servers
    clang-tools
    gopls
    lua-language-server
    nixd
    svelte-language-server
    tree-sitter
    typescript-language-server
    zls

    # formatters
    alejandra
    nodePackages.prettier
    prettierd
    stylua

    # misc.
    opencode
  ];

  # Rust setup instructions
  # > rustup toolchain install stable
  # > rustup component add rust-analyzer

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
