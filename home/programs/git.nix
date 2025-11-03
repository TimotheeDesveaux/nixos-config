{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;
    ignores = [ ".direnv" ".envrc" ];
    settings =
      {
        user.email = "timothee.desveaux@gmail.com";
        user.name = "Timothée Desveaux";
        alias = {
          log-graph = "log --all --decorate --oneline --graph --color=always";
        };
        pull.rebase = true;
      };
  };
}
