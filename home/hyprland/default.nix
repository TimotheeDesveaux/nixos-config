{ config, lib, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
  };

  imports = [
    ./settings.nix
    ./binds.nix
    ./rules.nix
    ./hyprlock.nix
  ];
}
