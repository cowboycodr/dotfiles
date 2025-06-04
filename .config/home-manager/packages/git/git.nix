{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    delta
  ];

  programs.git = {
    enable = true;
    userEmail = "kian.p.m.007@gmail.com";
    userName = "cowboycodr";

    extraConfig = ''
      [core]
          pager = delta

      [interactive]
          diffFilter = "delta --color-only"

      [delta]
          navigate = true
          dark = true
          side-by-side=true
          line-numbers= true

      [merge]
          conflictstyle = zdiff3
    '';
  };
}
