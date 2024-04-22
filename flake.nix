{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprlock = {
      url = "github:hyprwm/hyprlock";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # fish plugins
    z = {
      url = "github:jethrokuan/z/master";
      flake = false;
    };
    bass = {
      url = "github:edc/bass/master";
      flake = false;
    };

    tokyonight-sddm-theme = {
      url = "github:MarianArlt/sddm-sugar-dark/master";
      flake = false;
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    rec {
      formatter.${system} = pkgs.nixpkgs-fmt;

      overlays = import ./overlays { inherit inputs; };

      nixosConfigurations = {
        nixos-lenovo-stolen = nixpkgs.lib.nixosSystem {
          system = "${system}";
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/nixos-lenovo-stolen/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.stolen = import ./home;
              home-manager.extraSpecialArgs = { inherit inputs; };
            }
            { nixpkgs.overlays = builtins.attrValues overlays; }
          ];
        };
      };
    };
}
