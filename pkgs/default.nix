{ pkgs, inputs }:

{
  tokyonight-sddm-theme =
    pkgs.callPackage ./tokyonight-sddm-theme.nix { inherit inputs; };
}
