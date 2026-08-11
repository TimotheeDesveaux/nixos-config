{ config, lib, pkgs, ... }:

{
  gtk = {
    enable = true;
    colorScheme = "dark";
    theme = {
      package = pkgs.kdePackages.breeze-gtk;
      name = "Breeze-Dark";
    };
  };
}
