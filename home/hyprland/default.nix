{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    wofi-power-menu
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
  };

  imports = [
    ./settings.nix
    ./binds.nix
    ./rules.nix
    ./waybar
    ./hyprlock.nix
    ./hypridle.nix
  ];
}
