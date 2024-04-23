{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    hyprpaper
  ];

  home.file."wallpaper.jpg".source = ./wallpaper.jpg;

  home.file.".config/hypr/hyprpaper.conf".text = ''
    preload = ~/wallpaper.jpg
    wallpaper = ,~/wallpaper.jpg
  '';
}
