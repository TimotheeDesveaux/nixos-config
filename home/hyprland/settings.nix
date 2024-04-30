{ config, lib, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = with config.theme; {
    monitor = [
      "HDMI-A-2,2560x1440@59.95,0x0,1"
      "eDP-1,1366x768@60,auto-right,1"
    ];

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
      drop_shadow = false;
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

    device = {
      name = "zsa-technology-labs-moonlander-mark-i";
      kb_options = "grp:win_space_toggle";
    };

    misc = {
      force_default_wallpaper = 0;
    };

    binds = {
      workspace_center_on = 1;
    };

    exec-once = [
      "thunderbird"
      "discord"
      "spotify"
      "waybar"
      "swaybg -m fill -i ~/Pictures/wallpaper.jpg"
    ];
  };
}
