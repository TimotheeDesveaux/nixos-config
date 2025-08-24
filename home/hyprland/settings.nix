{ config, lib, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = with config.theme; {
    monitor = "monitor=,preferred,auto,1";

    general = {
      gaps_in = 5;
      gaps_out = 10;
      "col.inactive_border" = "rgba(00000000)"; # Transparent
      "col.active_border" = "rgb(${colors.purple})";
      layout = "dwindle";
    };

    dwindle = {
      force_split = 2;
      preserve_split = true;
    };

    decoration = {
      rounding = 3;
      shadow.enabled = false;
    };

    animations = {
      enabled = true;
    };

    input = {
      kb_layout = "us,us";
      kb_variant = ",intl";
      kb_options = "grp:win_space_toggle,caps:swapescape";
      repeat_rate = 35;
      repeat_delay = 225;
    };

    device = [
      {
        name = "zsa-technology-labs-moonlander-mark-i";
        kb_options = "grp:win_space_toggle";
      }
      {
        name = "zsa-technology-labs-voyager";
        kb_options = "grp:win_space_toggle";
      }
    ];

    misc = {
      force_default_wallpaper = 0;
    };

    binds = {
      workspace_center_on = 1;
    };

    exec-once = [
      "thunderbird"
      "discord"
      "firefox tidal.com"
      "waybar"
      "hyprctl setcursor Adwaita 16"
      "swaybg -m fill -i ~/Pictures/wallpaper.jpg"
      "systemctl --user restart hypridle.service"
    ];
  };
}
