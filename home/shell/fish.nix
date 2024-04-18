{ config, lib, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    interactiveShellInit = "set fish_greeting";

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
  };
}
