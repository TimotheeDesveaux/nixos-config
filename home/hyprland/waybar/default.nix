{ config, lib, pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    settings =
      let
        common = {
          position = "top";

          modules-left = [
            "hyprland/workspaces"
            "custom/window-state"
          ];
          modules-center = [
            "mpris"
          ];
          modules-right = [
            "custom/kblayout"
            "clock"
            "wireplumber"
            "backlight"
            "battery"
            "tray"
          ];
        };
        modules = import ./modules.nix { inherit config; inherit pkgs; };
      in
      {
        laptop = {
          name = "laptop";
          output = "eDP-1";
        } // common // modules;
        extern = {
          name = "extern";
          output = "HDMI-A-2";
        } // common // modules;
      };

    style = import ./style.nix config.theme.colors;
  };
}
