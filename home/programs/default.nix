{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Apps
    firefox
    spotify
    discord

    # Launcher
    wofi

    # Utils
    brightnessctl
  ];

  imports = [
    ./git.nix
    ./dunst.nix
  ];
}
