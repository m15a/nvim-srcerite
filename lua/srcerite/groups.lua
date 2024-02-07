local groups = require 'highlite.groups'
local palette = require((...):match '(.+)%.[^.]+').palette

local M = require('highlite').groups('default', palette)

-- A couple of tweaks {{{

M.NormalFloat = M.Normal
M.CursorLine = groups.extend({ bg = palette.bg_contrast_high }, M.CursorLine)

-- }}}

-- Options {{{

if vim.g.srcerite_inverse_visual then
   M.Visual = { reverse = true }
end

if vim.g.srcerite_inverse_search then
   M.Search = { reverse = true }
   M.IncSearch = { reverse = true }
end

if vim.g.srcerite_inverse_match_paren then
   M.MatchParen = groups.extend({ reverse = true }, M.MatchParen)
end

-- }}}

return M

-- vim: fdm=marker
