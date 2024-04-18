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
        format = pkgs: ''
          ${pkgs.stylua}/bin/stylua --check lua
          ${pkgs.nixfmt-rfc-style}/bin/nixfmt --check --width=80 *.nix
        '';
        lint = pkgs: "${pkgs.selene}/bin/selene lua";
      };

      flakelight.builtinFormatters = false;
      formatters = {
        "*.lua" = "stylua";
        "*.nix" = "nixfmt --width=80";
      };
    };
}
