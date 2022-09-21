{
  programs.git = {
    enable = true;
    userEmail = "timothee.desveaux@epita.fr";
    userName = "Timothée Desveaux";
    ignores = [ ".envrc" ".direnv" ];
    signing.key = "97A14503F699535D";
  };
}
