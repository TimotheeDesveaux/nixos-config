{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    cargo
    rustc
    rust-analyzer
    rustfmt
    clippy
  ];
}
