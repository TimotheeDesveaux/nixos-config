{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    hyprlock
  ];

  home.file.".config/hypr/hyprlock.conf".text = with config.theme; ''
    # BACKGROUND
    background {
        monitor =
        path = screenshot
        blur_passes = 3
    }

    # INPUT FIELD
    input-field {
        monitor =
        size = 250, 60
        outline_thickness = 2
        outer_color = rgb(${colors.bg_dark})
        inner_color = rgb(${colors.bg_dark})
        font_color = rgb(${colors.fg})
        fade_on_empty = false
        font_family = Hack Nerd Font Mono
        placeholder_text = <i><span foreground="##${colors.comment}">Input Password...</span></i>
        check_color = rgb(${colors.yellow})
        fail_color = rgb(${colors.red})
        position = 0, -90
        halign = center
        valign = center
    }

    # TIME
    label {
        monitor =
        text = cmd[update:1000] echo "$(date +"%H:%M")"
        color = rgb(${colors.white})
        font_size = 120
        font_family = Hack Nerd Font Mono ExtraBold
        position = 0, -50
        halign = center
        valign = center
    }
  '';
}
