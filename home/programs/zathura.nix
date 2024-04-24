{ config, lib, pkgs, ... }:

{
  programs.zathura = with config.theme; {
    enable = true;
    options = {
      notification-error-bg = "#${colors.red}";
      notification-error-fg = "#${colors.fg}";
      notification-warning-bg = "#${colors.yellow}";
      notification-warning-fg = "#${colors.terminal_black}";
      notification-bg = "#${colors.bg}";
      notification-fg = "#${colors.fg}";
      completion-bg = "#${colors.bg}";
      completion-fg = "#${colors.fg_dark}";
      completion-group-bg = "#${colors.bg}";
      completion-group-fg = "#${colors.fg_dark}";
      completion-highlight-bg = "#${colors.terminal_black}";
      completion-highlight-fg = "#${colors.fg}";
      index-bg = "#${colors.bg}";
      index-fg = "#${colors.fg}";
      index-active-bg = "#${colors.terminal_black}";
      index-active-fg = "#${colors.fg}";
      inputbar-bg = "#${colors.bg}";
      inputbar-fg = "#${colors.fg}";
      statusbar-bg = "#${colors.bg}";
      statusbar-fg = "#${colors.fg}";
      highlight-color = "#${colors.yellow}";
      highlight-active-color = "#${colors.green}";
      default-bg = "#${colors.bg}";
      default-fg = "#${colors.fg}";
      render-loading = true;
      render-loading-fg = "#${colors.bg}";
      render-loading-bg = "#${colors.fg}";
      recolor-lightcolor = "#${colors.bg}";
      recolor-darkcolor = "#${colors.fg}";
    };
  };
}
