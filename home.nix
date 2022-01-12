{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "stolen";
  home.homeDirectory = "/home/stolen";

  xdg.userDirs.enable = true;
  xdg.userDirs.createDirectories = true;

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    htop
    cmatrix

    rofi
    flameshot

    alacritty
    feh
    discord
    spotify
    thunderbird
    slack

    nixfmt
  ];

  imports = [ ./git ./bspwm ./sxhkd ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";
}
