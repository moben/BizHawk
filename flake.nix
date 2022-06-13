{
  description = "A flake for BizHawk";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in rec {
      packages = import ./default.nix {
        pkgs = pkgs;
      };
      defaultPackage = packages.emuhawk;
      devShell = packages.emuhawk;
    });
}
