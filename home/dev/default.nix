{ pkgs, ... }:

{
  nix = import ./nix.nix { inherit pkgs; };
  cc = import ./cc.nix { inherit pkgs; };
  lua = import ./lua.nix { inherit pkgs; };
  rust = import ./rust.nix { inherit pkgs; };
  tex = import ./tex.nix { inherit pkgs; };
}
