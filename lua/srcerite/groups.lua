local groups = require 'highlite.groups'
local srcerite = require((...):match '(.+)%.[^.]+')

local M = require('highlite').groups('default', srcerite.palette)

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

return M
