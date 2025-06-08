{
  pkgs,
  ...
}: {
  programs.ghostty = {
    enabled = true;

    settings = {
      theme = "CutiePro";

      font-family = "JetBrains Mono Medium";
      font-size = 16;

      window-padding-x = 0;
      window-padding-y = 0;
    };

    programs.tmux = {
      enable = true;

      baseIndex = 1;

      keyMode = "vi";
      escapeTime = 0;

      terminal = "xterm-256color";

      extraConfig = ''
        set -g status-style "bg=#f72f93 fg=#ffffff"
      '';
    };

    programs.git = {
      enable = true;
      userEmail = "kian.p.m.007@gmail.com";
      userName = "cowboycodr";

      extraConfig = {
        core = {
          pager = "delta";
        };

        interactive = {
          diffFilter = "delta --color-only";
        };

        delta = {
          navigate = true;
          dark = true;
          side-by-side = true;
          line-numbers = true;
        };

        merge = {
          conflictstyle = "zdiff3";
        };
      };
    };

    # Neovim is in its own module due to its complexity

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

    home.packages = with pkgs; [
      delta
    ];
  };
}
