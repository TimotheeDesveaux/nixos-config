{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    swaybg
  ];

  home.file."wallpaper.jpg".source = ./wallpaper.jpg;
}
