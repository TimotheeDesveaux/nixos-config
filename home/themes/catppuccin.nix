{ config, lib, pkgs, ... }:

{
  catppuccin = {
    enable = true;
    autoEnable = false;
    flavor = "macchiato";

    gtk.icon = {
      enable = true;
    };
  };
}
