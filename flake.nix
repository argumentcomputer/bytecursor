{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    utils.url = "github:numtide/flake-utils";
    naersk.url = "github:nmattia/naersk";
  };

  outputs =
    { self
    , nixpkgs
    , utils
    , naersk
    }:
    utils.lib.eachDefaultSystem (system:
    let
      lib = nixpkgs.lib;
      overlays = [ (import ./nix/rust-overlay.nix) ];
      pkgs = import nixpkgs { inherit system overlays;};
      rust = import ./nix/rust.nix { nixpkgs = pkgs; };
      naersk-lib = naersk.lib."${system}".override {
        rustc = rust;
        cargo = rust;
      };

      crateName = "bytecursor";

      project = naersk-lib.buildPackage {
        name = crateName;
        buildInputs = with pkgs; [ ];
        targets = [ ];
        root = ./.;
        copyLibs = true;
        remapPathPrefix =
          true; # remove nix store references for a smaller output package
      };

    in
    {
      packages.${crateName} = project;

      defaultPackage = self.packages.${system}.${crateName};

      # `nix develop`
      devShell = pkgs.mkShell {
        inputsFrom = builtins.attrValues self.packages.${system};
        nativeBuildInputs = [ rust ];
        buildInputs = with pkgs; [
          rust-analyzer
          clippy
          rustfmt
        ];
      };
    });
}