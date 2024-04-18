{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Apps
    firefox
    spotify
    discord

    # Launcher
    wofi
  ];

  imports = [
    ./git.nix
  ];
}
