{ pkgs, inputs }:

{
  tokyonight-sddm-theme =
    pkgs.callPackage ./tokyonight-sddm-theme.nix { inherit inputs; };
  wofi-power-menu = pkgs.callPackage ./wofi-power-menu.nix { inherit pkgs; };
}
