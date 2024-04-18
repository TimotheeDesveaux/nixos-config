{ config, lib, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    settings = {
      battery.disabled = true;

      directory = {
        truncation_length = 0;
        read_only = "";
      };

      lua.symbol = "󰢱";
      rust.symbol = "󱘗";
      python.symbol = "󰌠";

      git_status = {
        style = "bold blue";
        conflicted = "[=\${count}](bold red)";
        stashed = "%\${count}";
        deleted = "[\${count}](bold red)";
        renamed = "[»\${count}](bold yellow)";
        modified = "!\${count}";
        staged = "[+\${count}](bold yellow)";
        untracked = "?\${count}";
        ahead = "[\${count}](bold cyan)";
        behind = "[\${count}](bold cyan)";
      };
    };
  };
}
