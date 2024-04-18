{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userEmail = "timothee.desveaux@gmail.com";
    userName = "Timothée Desveaux";

    aliases = {
      log-graph = "log --all --decorate --oneline --graph --color=always";
    };
  };
}
