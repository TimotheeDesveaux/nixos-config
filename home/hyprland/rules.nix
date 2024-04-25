{ config, lib, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "workspace 8, title:(Thunderbird)"
      "workspace 9, title:(Discord)"
      "workspace 10, title:(Spotify)"
    ];

    workspace = [
      "1, monitor:eDP-1, default:true"
      "2, monitor:HDMI-A-2, default:true"
      "3, monitor:eDP-1"
      "4, monitor:HDMI-A-2"
      "5, monitor:eDP-1"
      "6, monitor:HDMI-A-2"
      "7, monitor:HDMI-A-2"
      "8, monitor:HDMI-A-2"
      "9, monitor:HDMI-A-2"
      "10, monitor:HDMI-A-2"
    ];
  };
}
