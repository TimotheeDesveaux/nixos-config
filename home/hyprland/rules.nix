{ config, lib, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      {
        name = "mail";
        match = {
          title = "(.*Thunderbird.*)";
        };
        workspace = 8;
      }
      {
        name = "discord";
        match = {
          title = "(Discord)";
        };
        workspace = 9;
      }
      {
        name = "music";
        match = {
          title = "(.*tidal.*)";
        };
        workspace = 10;
      }
    ];
  };
}
