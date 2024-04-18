{ config, lib, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal = {
          family = "Hack Nerd Font Mono";
          style = "Regular";
        };

        bold = {
          family = "Hack Nerd Font Mono";
          style = "Bold";
        };

        italic = {
          family = "Hack Nerd Font Mono";
          style = "Italic";
        };

        bold_italic = {
          family = "Hack Nerd Font Mono";
          style = "Bold Italic";
        };

        size = 9;

        offset = {
          x = 0;
          y = 0;
        };
      };

      shell.program = "${pkgs.fish}/bin/fish";
    };
  };
}
