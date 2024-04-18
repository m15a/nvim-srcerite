{
  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    flakelight.url = "github:nix-community/flakelight";
  };

  outputs =
    { flakelight, ... }@inputs:
    flakelight ./. {
      inherit inputs;
      devShell.packages =
        pkgs: with pkgs; [
          pre-commit
          selene
          stylua
          lua-language-server
        ];
    };
}
