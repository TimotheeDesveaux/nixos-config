{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    wofi-power-menu
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    # configType = "lua";
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
