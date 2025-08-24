{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Apps
    firefox
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
    ./zathura.nix
  ];
}
