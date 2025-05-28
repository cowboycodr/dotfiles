{
  config,
  pkgs,
  ...
}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      rebuild = "sudo nixos-rebuild switch --flake ~/.config";
      rebuild-home = "home-manager switch --flake ~/.config";
      cleanup = "sudo nix-collect-garbage -d";
      dotfiles = "git --git-dir $HOME/.dotfiles/ --work-tree=$HOME";
    };

    oh-my-zsh = {
      enable = true;
      plugins = ["git"];
      theme = "robbyrussell";
    };
  };
}
