{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Apps
    firefox
    spotify
    discord
    thunderbird
    xfce.thunar
    imv

    # Launcher
    wofi

    # Utils
    brightnessctl
    playerctl
  ];

  services.network-manager-applet.enable = true;

  imports = [
    ./git.nix
    ./dunst.nix
  ];
}
