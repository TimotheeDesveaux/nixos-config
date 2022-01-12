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

  fonts.fontconfig.enable = true;

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    htop
    cmatrix
    tree

    flameshot
    brightnessctl

    alacritty
    feh
    font-manager
    lxappearance
    discord
    spotify
    thunderbird
    slack

    nixfmt

    (nerdfonts.override { fonts = [ "Hack" ]; })
    noto-fonts-emoji
    papirus-icon-theme
  ];

  imports = [ ./git ./bspwm ./sxhkd ./rofi ];

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
