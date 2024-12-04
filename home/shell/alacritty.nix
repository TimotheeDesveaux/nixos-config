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

      colors = with config.theme; {
        primary = {
          background = "#${colors.bg}";
          foreground = "#${colors.fg}";
        };

        normal = {
          black = "#${colors.black}";
          red = "#${colors.red}";
          green = "#${colors.green}";
          yellow = "#${colors.yellow}";
          blue = "#${colors.blue}";
          magenta = "#${colors.magenta}";
          cyan = "#${colors.cyan}";
          white = "#${colors.fg_dark}";
        };

        selection = {
          foreground = "CellForeground";
          background = "#${colors.bg_selection}";
        };
      };

      mouse.hide_when_typing = true;

      terminal.shell.program = "${pkgs.fish}/bin/fish";
    };
  };
}
