{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin.url = "github:catppuccin/nix";

    # fish plugins
    z = {
      url = "github:jethrokuan/z/master";
      flake = false;
    };
    bass = {
      url = "github:edc/bass/master";
      flake = false;
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, disko, sops-nix, catppuccin, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    rec {
      formatter.${system} = pkgs.nixpkgs-fmt;

      devShells.${system} = import ./home/dev { inherit pkgs; };

      overlays = import ./overlays { inherit inputs; };

      nixosConfigurations = {
        nixos-lenovo-stolen = nixpkgs.lib.nixosSystem {
          system = "${system}";
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/nixos-lenovo-stolen/configuration.nix
            catppuccin.nixosModules.catppuccin
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.stolen =
                {
                  imports = [
                    ./home
                    catppuccin.homeModules.catppuccin
                  ];
                };
              home-manager.extraSpecialArgs = { inherit inputs; };
            }
            { nixpkgs.overlays = builtins.attrValues overlays; }
          ];
        };

        coltrane = nixpkgs.lib.nixosSystem
          {
            system = "${system}";
            modules = [
              disko.nixosModules.disko
              sops-nix.nixosModules.sops
              ./hosts/coltrane/configuration.nix
            ];
          };
      };
    };
}
