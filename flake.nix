{
  inputs.flakelight.url = "github:nix-community/flakelight";

  outputs =
    { self, flakelight, ... }:
    let
      pname = "nvim-srcerite";

      version = "${version_base}+sha.${version_sha}";
      version_base = "2.0.1";
      version_sha = self.shortRev or self.dirtyShortRev or "unknown";

      overlay = final: prev: {
        m15aVimPlugins =
          let
            inherit (final) lib;
            super =
              prev.m15aVimPlugins or (lib.makeExtensible (_: lib.recurseIntoAttrs { }));
          in
          super.extend (
            _: _: {
              ${pname} = final.vimUtils.buildVimPlugin {
                inherit pname version;
                src = ./.;
                dependencies = [ final.vimPlugins.nvim-highlite ];
                meta = {
                  description = "Neovim colorscheme inspired by Srcery";
                  license = lib.licenses.bsd3;
                  homepage = "https://github.com/m15a/${pname}";
                };
              };
            }
          );
      };
    in
    flakelight ./. {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      inherit overlay;

      withOverlays = overlay;

      package = pkgs: pkgs.m15aVimPlugins.${pname};

      flakelight.builtinFormatters = false;
      formatters = {
        "*.lua" = "stylua";
        "*.nix" = "nixfmt -w80";
      };

      devShell.packages =
        pkgs: with pkgs; [
          selene
          stylua
          lua-language-server
          nixfmt-rfc-style
        ];
    };
}
