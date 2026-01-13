{ config, lib, pkgs, inputs, ... }:

{
  gtk = {
    enable = true;
    theme = {
      package = pkgs.kdePackages.breeze-gtk;
      name = "Breeze-Dark";
    };
  };

  catppuccin.enable = true;
  catppuccin.autoEnable = false;
  catppuccin.flavor = "macchiato";

  catppuccin.gtk.icon = {
    enable = true;
  };
}
