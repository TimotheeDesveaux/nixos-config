{ config, lib, pkgs, ... }:

let
  themeNames = {
    tokyonight-storm = "Tokyonight-Storm";
    tokyonight-night = "Tokyonight-Dark";
  };
in
{
  gtk = {
    enable = true;
    theme = {
      package = pkgs.tokyonight-gtk-theme;
      name = "Adwaita-dark";
    };
    iconTheme = {
      package = pkgs.tokyonight-gtk-theme;
      name = "Adwaita-dark";
    };
  };
}
