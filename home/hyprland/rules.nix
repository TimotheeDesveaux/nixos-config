{ config, lib, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "workspace 8, title:(.*Thunderbird.*)"
      "workspace 9, title:(Discord)"
      "workspace 10, fullscreen 0, title:(.*tidal.*)"
    ];
  };
}
