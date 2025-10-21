{ config, pkgs, ... }:
{
  programs.ghostty = {
    enable = true;

    settings = {
      font-family = "JetBrainsMono Nerd Font";
      font-family-bold = "auto";
      font-family-italic = "auto";
      font-family-bold-italic = "auto";
      font-size = 15;

      window-padding-x = 4;
      window-padding-y = 4;
      background-opacity = 0.75;
      window-decoration = "none";
      confirm-close-surface = false;

      theme = "tokyonight";
    };

    themes = {
      tokyonight = {
        background = "1a1b26";
        foreground = "c0caf5";
        cursor-color = "c0caf5";
        selection-background = "33467C";

        palette = [
          "0=#15161e"
          "1=#f7768e"
          "2=#9ece6a"
          "3=#e0af68"
          "4=#7aa2f7"
          "5=#bb9af7"
          "6=#7dcfff"
          "7=#a9b1d6"
          "8=#414868"
          "9=#f7768e"
          "10=#9ece6a"
          "11=#e0af68"
          "12=#7aa2f7"
          "13=#bb9af7"
          "14=#7dcfff"
          "15=#c0caf5"
        ];
      };
    };
  };
}

