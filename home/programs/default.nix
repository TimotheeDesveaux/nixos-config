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
    playerctl
    networkmanagerapplet
  ];

  imports = [
    ./git.nix
    ./dunst.nix
  ];
}
