{
  description = "Neovim configuration for masonnl";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: let
    forAllSystems = nixpkgs.lib.genAttrs [ "x86_64-linux" ];
  in {
    packages = forAllSystems (system: {
      default = self.lib.mkVimPlugin { inherit system; };
      neovim = self.lib.mkNeovim { inherit system; };
    });

    apps = forAllSystems (system: {
      nvim = {
        program = "${self.packages.${system}.neovim}/bin/nvim";
        type = "app";
      };
    });

    devShells = forAllSystems (system: {
      default = nixpkgs.legacyPackages.${system}.mkShell {
        buildInputs = [ nixpkgs.legacyPackages.${system}.just ];
      };
    });
  };

}
