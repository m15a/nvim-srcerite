{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs =
    { self, nixpkgs, ... }:
    let
      pname = "nvim-srcerite";

      version = "${version_base}+sha.${version_sha}";
      version_base = "2.1.0";
      version_sha = self.shortRev or self.dirtyShortRev or "unknown";

      defaultSystems = [
        "x86_64-linux"
        "x86_64-darwin"
        "aarch64-linux"
        "aarch64-darwin"
      ];

      forDefaultSystems =
        f:
        nixpkgs.lib.genAttrs defaultSystems (
          system:
          f (
            import nixpkgs {
              inherit system;
              overlays = [
                devOverlay
                overlay
              ];
            }
          )
        );

      devOverlay = final: prev: {
        formatter = final.writeShellApplication {
          name = "${pname}-formatter";
          runtimeInputs = with final; [
            stylua
            selene
            nixfmt-rfc-style
          ];
          text = ''
            mapfile -t files < <(git ls-files --exclude-standard)
            for file in "''${files[@]}"; do
                case "''${file##*.}" in
                    lua)
                        stylua "$file" &
                        selene -n "$file" &
                        ;;
                    nix)
                        nixfmt -w80 "$file" &
                        ;;
                esac
            done
          '';
        };
      };

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
    {
      overlays.default = overlay;

      packages = forDefaultSystems (pkgs: {
        default = pkgs.m15aVimPlugins.${pname};
      });

      checks = forDefaultSystems (pkgs: {
        package = pkgs.m15aVimPlugins.${pname};

        formatting =
          pkgs.runCommandLocal "check-formatting"
            {
              buildInputs = [
                pkgs.gitMinimal
                pkgs.formatter
              ];
            }
            ''
              cp -r --no-preserve=mode ${self} source
              cd source
              git init --quiet && git add .
              ${pkgs.formatter.name}
              test $? -ne 0 && exit 1
              touch $out
            '';
      });

      formatter = forDefaultSystems (pkgs: pkgs.formatter);

      devShells = forDefaultSystems (pkgs: {
        default = pkgs.mkShell {
          packages = with pkgs; [
            stylua
            selene
            lua-language-server
            nixfmt-rfc-style
          ];
        };
      });
    };
}
