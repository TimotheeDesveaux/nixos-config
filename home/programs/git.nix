{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userEmail = "timothee.desveaux@gmail.com";
    userName = "Timothée Desveaux";
    ignores = [ ".direnv" ".envrc" ];

    aliases = {
      log-graph = "log --all --decorate --oneline --graph --color=always";
    };

    extraConfig = {
      pull.rebase = true;
    };
  };
}
