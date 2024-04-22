{ config, lib, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "workspace 10, title:(Spotify)"
      "workspace 9, title:(Discord)"
    ];
  };
}
