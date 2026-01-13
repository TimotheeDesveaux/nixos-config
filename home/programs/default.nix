{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Apps
    firefox
    tidal-hifi
    discord
    thunderbird
    thunar
    imv
    teams-for-linux

    # Utils
    brightnessctl
    playerctl
  ];

  services.network-manager-applet.enable = true;

  imports = [
    ./git.nix
    ./dunst.nix
    ./wofi.nix
    ./zathura.nix
  ];
}
