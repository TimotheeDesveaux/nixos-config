{ config, lib, pkgs, ... }:

{
  options = {
    theme.colors = lib.mkOption {
      type = with lib.types; attrsOf str;
      default = {
        bg = "#24283b";
        bg_selection = "#2e3c64";
        black = "#1d202f";
        blue = "#7aa2f7";
        comment = "#565f89";
        cyan = "#7dcfff";
        fg = "#c0caf5";
        green = "#9ece6a";
        magenta = "#bb9af7";
        orange = "#ff9e64";
        purple = "#9d7cd8";
        red = "#f7768e";
        white = "#a9b1d6";
        yellow = "#e0af68";
      };
    };
  };

  imports = [
    ./fonts.nix
  ];
}
