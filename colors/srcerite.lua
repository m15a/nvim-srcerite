local highlite = require 'highlite'
local srcerite = require 'srcerite'
local groups = require 'highlite.groups'

local g = highlite.groups('default', srcerite.palette)

if vim.g.srcerite_inverse_visual then
   g.Visual = { reverse = true }
end
if vim.g.srcerite_inverse_search then
   g.Search = { reverse = true }
   g.IncSearch = { reverse = true }
end
if vim.g.srcerite_inverse_match_paren then
   g.MatchParen = groups.extend({ reverse = true }, g.MatchParen)
end

highlite.generate('srcerite', g, srcerite.terminal_palette)
