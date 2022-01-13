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
    # Shell
    htop
    cmatrix
    tree
    killall

    # Utility
    flameshot
    brightnessctl
    playerctl
    redshift

    # Apps
    alacritty
    feh
    font-manager
    lxappearance
    discord
    spotify
    thunderbird
    slack

    # Dev
    nixfmt

    # Fonts/Theme
    (nerdfonts.override { fonts = [ "Hack" ]; })
    iosevka
    noto-fonts-emoji
    papirus-icon-theme
  ];

  imports = [ ./python ./git ./bspwm ./sxhkd ./dunst ./polybar ./rofi ];

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
