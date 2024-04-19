{ config, lib, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
      set_colors
    '';

    shellAbbrs = {
      la = "ls -a";
      ll = "ls -la";

      g = "git";
      ga = "git add";
      gc = "git commit";
      gd = "git diff";
      gp = "git push";
      gP = "git pull";
      gl = "git log";
      gL = "git log-graph";
      gr = "git reset";
      gs = "git status";
      gg = "git status -s";
      gS = "git switch";

      bt = "bluetoothctl";
    };

    shellAliases = {
      zathura = "zathura --fork";

      rm = "rm -I";
      mv = "mv -i";
      cp = "cp -i";
    };

    functions = {
      set_colors = with config.theme; ''
        set -g fish_color_normal ${colors.fg}
        set -g fish_color_command ${colors.cyan}
        set -g fish_color_keyword ${colors.magenta}
        set -g fish_color_quote ${colors.yellow}
        set -g fish_color_redirection ${colors.fg}
        set -g fish_color_end ${colors.orange}
        set -g fish_color_error ${colors.red}
        set -g fish_color_param ${colors.purple}
        set -g fish_color_comment ${colors.comment}
        set -g fish_color_selection --background=${colors.bg_selection}
        set -g fish_color_search_match --background=${colors.bg_selection}
        set -g fish_color_operator ${colors.green}
        set -g fish_color_escape ${colors.magenta}
        set -g fish_color_autosuggestion ${colors.comment}

        set -g fish_pager_color_progress ${colors.comment}
        set -g fish_pager_color_prefix ${colors.cyan}
        set -g fish_pager_color_completion ${colors.fg}
        set -g fish_pager_color_description ${colors.comment}
        set -g fish_pager_color_selected_background --background=${colors.bg_selection}
      '';
    };
  };
}
