local highlite = require 'highlite'
local srcerite = require 'srcerite'
local groups = require 'highlite.groups'

local g = highlite.groups('default', srcerite.palette)

g.Visual = groups.extend({ reverse = true }, g.Visual)

highlite.generate('srcerite', g, srcerite.terminal_palette)
