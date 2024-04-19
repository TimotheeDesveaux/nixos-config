{ config, lib, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
      "workspace 10, initialTitle:(Spotify Premium)"
      "workspace 9, initialTitle:(Discord)"
    ];
  };
}
