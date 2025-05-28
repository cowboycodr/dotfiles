{
  config,
  pkgs,
  ...
}: {
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "kian";
  home.homeDirectory = "/home/kian";

  nixpkgs.config.allowUnfree = true;

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "neovim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  imports = [
    ../packages/ghostty/ghostty.nix
    ../packages/hyprland/hyprland.nix # hyprland configuration files
    ../packages/neovim/neovim.nix
    ../packages/rofi/rofi.nix
    ../packages/firefox/firefox.nix
    ../packages/dolphin/dolphin.nix
    ../packages/discord/discord.nix
    ../packages/git/git.nix
    ../packages/zsh/zsh.nix
    ../packages/xremap/xremap.nix
    ../packages/waybar/waybar.nix
  ];
}
