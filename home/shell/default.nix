{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Utils
    tree
    ripgrep
    wl-clipboard
    jq

    # Archives
    zip
    unzip
  ];

  imports = [
    ./alacritty.nix
    ./fish.nix
    ./starship.nix
  ];
}