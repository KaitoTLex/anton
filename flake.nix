{
  # inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  # inputs.chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";

  outputs =
    { nixpkgs, ... }:
    {
      nixosConfigurations.athena = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          #chaotic.nixosModules.default
        ];
      };
    };
}
