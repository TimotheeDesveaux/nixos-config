{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "stolen";
  home.homeDirectory = "/home/stolen";
  home.sessionVariables = {
    EDITOR = "nvim";
    _JAVA_AWT_WM_NONREPARENTING = 1;
  };

  xdg.userDirs.enable = true;
  xdg.userDirs.createDirectories = true;

  fonts.fontconfig.enable = true;

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    # Shell
    htop
    neofetch
    ripgrep
    tree

    # Utility
    arandr
    brightnessctl
    flameshot
    playerctl
    redshift
    unzip
    xclip

    # Latex
    pandoc
    texlive.combined.scheme-full

    # Apps
    discord
    feh
    font-manager
    pavucontrol
    slack
    spotify
    teams
    thunderbird
    zathura

    # Dev
    bear
    binutils
    clang-tools
    gcc
    gdb
    gnumake
    man-pages
    neovim
    valgrind

    # Formatters and language servers
    nixpkgs-fmt
    nodePackages.bash-language-server
    nodePackages.pyright
    rust-analyzer
    rustfmt
    stylua
    sumneko-lua-language-server
    texlab

    # Fonts/Theme
    iosevka
    (nerdfonts.override { fonts = [ "Hack" ]; })
    noto-fonts-emoji
    papirus-icon-theme
  ];

  imports = [ ./programs ];

  services.network-manager-applet.enable = true;

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
