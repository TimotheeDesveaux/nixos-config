{ config, lib, pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    settings =
      let
        modules = import ./modules.nix config.theme.colors;
      in
      {
        mainBar = {
          position = "top";

          modules-left = [
            "hyprland/workspaces"
          ];
          modules-center = [
            "mpris"
          ];
          modules-right = [
            "clock"
            "wireplumber"
            "backlight"
            "battery"
            "tray"
          ];
        } // modules;
      };

    style = import ./style.nix config.theme.colors;
  };
}
