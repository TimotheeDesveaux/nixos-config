{ pkgs, ... }:

pkgs.mkShell {
  packages = with pkgs; [
    nixpkgs-fmt
    nil
  ];
}
