{ config, lib, pkgs, ... }:

{
  programs.hyprlock = with config.theme; {
    enable = true;

    backgrounds = [
      {
        monitor = "";
        path = "screenshot";
        blur_passes = 3;
      }
    ];

    input-fields = [
      {
        monitor = "";
        size = {
          width = 250;
          height = 60;
        };
        outline_thickness = 2;
        outer_color = "rgb(${colors.bg_dark})";
        inner_color = "rgb(${colors.bg_dark})";
        font_color = "rgb(${colors.fg})";
        fade_on_empty = false;
        placeholder_text = ''<i><span font_family="Hack Nerd Font" foreground="##${colors.comment}">Input Password...</span></i>'';
        check_color = "rgb(${colors.yellow})";
        fail_color = "rgb(${colors.red})";
        position = {
          x = 0;
          y = -90;
        };
        halign = "center";
        valign = "center";
      }
    ];

    labels = [
      {
        monitor = "";
        text = ''cmd[update:1000] echo "$(date +"%H:%M")"'';
        color = "rgb(${colors.fg})";
        font_size = 120;
        font_family = "Hack Nerd Font ExtraBold";
        position = {
          x = 0;
          y = -50;
        };
        halign = "center";
        valign = "center";
      }
    ];
  };
}
