{
  inputs.flakelight.url = "github:nix-community/flakelight";

  outputs =
    { flakelight, ... }:
    flakelight ./. {

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
