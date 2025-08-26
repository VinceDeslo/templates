{
  description = "VinceDeslo's flake templates";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {
          inherit system;
        };
      in {
        devShells.default = with pkgs;
          mkShell {
            buildInputs = [
              just
              alejandra
            ];
          };
        formatter = pkgs.alejandra;
      }
    )
    // {
      templates = {
        rust-base = {
          path = ./templates/rust-base;
          description = "Basic Rust flake setup";
        };
        go-base = {
          path = ./templates/go-base;
          description = "Basic Go flake setup";
        };
        python-base = {
          path = ./templates/python-base;
          description = "Basic Python flake setup";
        };
        zig-base = {
          path = ./templates/zig-base;
          description = "Basic Zig flake setup";
        };
        infra-base = {
          path = ./templates/infra-base;
          description = "Basic Infrastructure flake setup";
        };
      };
    };
}
