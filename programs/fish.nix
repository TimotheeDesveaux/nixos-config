{ config, lib, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
    '';

    shellAbbrs = {
      la = "ls -a";
      ll = "ls -la";

      vim = "nvim";

      ccf =
        "gcc -Wextra -Wall -Werror -std=c99 -pedantic -g -O0 -fno-inline -fsanitize=address -o main";
      cppf = "g++ -Wextra -Wall -Werror -std=c++17 -pedantic -o main";
      valgrind-full =
        "valgrind --leak-check=full --show-leak-kinds=all --leak-resolution=high --track-origins=yes --vgdb=yes";

      ga = "git add";
      gc = "git commit";
      gd = "git diff";
      gf = "git fetch";
      gl = "git log";
      gp = "git push";
      gP = "git pull";
      gr = "git reset";
      gR = "git restore";
      gs = "git status";
      gS = "git switch";

      nd = "nix develop --command fish";
      ns = "nix-shell --command fish";

      dc = "docker container";
      dC = "docker compose";

      bt = "bluetoothctl";
    };

    shellAliases = {
      gL = "git log --all --decorate --oneline --graph --color=always";
      gg = "git status -s";

      zathura = "zathura --fork";

      rm = "rm -I";
      mv = "mv -i";
      cp = "cp -i";

      cdtemp = "cd (mktemp -d)";
    };

    plugins = [{
      name = "z";
      src = pkgs.fetchFromGitHub {
        owner = "jethrokuan";
        repo = "z";
        rev = "45a9ff6d0932b0e9835cbeb60b9794ba706eef10";
        sha256 = "pWkEhjbcxXduyKz1mAFo90IuQdX7R8bLCQgb0R+hXs4=";
      };
    }];
  };
}
