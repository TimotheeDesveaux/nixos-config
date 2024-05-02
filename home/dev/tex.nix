{ pkgs, ... }:

pkgs.mkShell {
  packages = with pkgs; [
    texlive.combined.scheme-full
    pandoc
    texlab
  ];
}
