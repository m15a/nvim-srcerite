<!-- panvimdoc-ignore-start -->

# nvim-srcerite

Neovim colorscheme inspired by [Srcery][1].

![Lua][lang-badge]
[![CI][ci-badge]][ci-jobs]
[![Release][release-badge]][release-list]
[![Srcery][srcery-badge]][1]
[![Highlite][highlite-badge]][2]

<!-- ![screenshot](_assets/screenshot.png) -->

This is a full re-build of old [nvim-srcerite][3].

<!-- panvimdoc-ignore-end -->

<!-- panvimdoc-include-comment

```vimdoc
Maintainer: NACAMURA Mitsuhiro <m15@m15a.dev>
URL: https://github.com/m15a/nvim-srcerite
License: BSD 3-Clause
```

-->

## Description

`srcerite` is a colorscheme for Neovim, generated using [nvim-highlite][2],
the Neovim colorscheme generator.

`srcerite`  is heavily inspired by [Srcery][1], long time my favorite Vim
colorscheme.
As its name implies, `srcerite` is a mix-in of `srcery` and `highlite`:
it is intended to make the best use of `srcery`'s contrasting color palette
and `highlite`'s semantic syntax highlighting.

## Requirements

- Neovim 0.8+
- [nvim-highlite][2]

## Installation

Use any package manager.
After installation, put the following line into your `init.lua`.

```lua
vim.cmd.colorscheme 'srcerite'
```

## Contribution

If you like this colorscheme, don't forget to add star to [nvim-highlite][2]!
Any contributions to this repo are also welcome!

<!-- panvimdoc-ignore-start -->

## License

[BSD 3-Clause](LICENSE)

<!-- panvimdoc-ignore-end -->

[lang-badge]: https://img.shields.io/badge/Made%20with%20Lua-2C2D72.svg?logo=lua&style=flat-square
[ci-badge]: https://img.shields.io/github/actions/workflow/status/m15a/nvim-srcerite/ci.yml?logo=github&label=CI&style=flat-square
[ci-jobs]: https://github.com/m15a/nvim-srcerite/actions/workflows/ci.yml
[release-badge]: https://img.shields.io/github/release/m15a/nvim-srcerite.svg?style=flat-square
[release-list]: https://github.com/m15a/nvim-srcerite/releases
[srcery-badge]: https://img.shields.io/badge/srcery-v1.0.4-ff5c8f.svg?style=flat-square
[highlite-badge]: https://img.shields.io/badge/highlite-v4-0aaeb3.svg?style=flat-square
[1]: https://srcery.sh/
[2]: https://github.com/Iron-E/nvim-highlite
[3]: https://github.com/mnacamura/nvim-srcerite

<!-- vim: set tw=78 spell: -->
