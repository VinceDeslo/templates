{
  description = "Go base flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    zig-overlay.url = "github:mitchellh/zig-overlay";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    zig-overlay,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        zig = zig-overlay.packages.${system}.default;
        pkgs = import nixpkgs {
          inherit system zig;
        };
      in {
        devShells.default = with pkgs;
          mkShell {
            buildInputs = [
              just
              alejandra
              zig
            ];
          };
        formatter = pkgs.alejandra;
      }
    );
}
