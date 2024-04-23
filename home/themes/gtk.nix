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
      name = themeNames.${config.theme.name} + "-BL";
    };
    iconTheme = {
      package = pkgs.tokyonight-gtk-theme;
      name = "Tokyonight-Dark";
    };
  };
}
