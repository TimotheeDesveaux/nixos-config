{ config, lib, pkgs, inputs, ... }:

{
  home = {
    username = "stolen";
    homeDirectory = "/home/stolen";

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "23.11";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
  };

  imports = [
    ./themes
    ./hyprland
    ./programs
    ./shell
  ];
}
