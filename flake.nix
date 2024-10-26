{
  inputs.flakelight.url = "github:nix-community/flakelight";

  outputs =
    { flakelight, ... }:
    flakelight ./. {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      devShell.packages =
        pkgs: with pkgs; [
          selene
          stylua
          lua-language-server
          nixfmt-rfc-style
        ];

      checks = {
        lint = pkgs: "${pkgs.selene}/bin/selene lua";
      };

      flakelight.builtinFormatters = false;
      formatters = {
        "*.lua" = "stylua";
        "*.nix" = "nixfmt --width=80";
      };
    };
}
