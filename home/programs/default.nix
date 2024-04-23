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

    # Utils
    brightnessctl
    playerctl
  ];

  services.network-manager-applet.enable = true;

  imports = [
    ./git.nix
    ./dunst.nix
    ./wofi.nix
  ];
}
