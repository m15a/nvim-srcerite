local srcery = require(... .. '.srcery')
local inputs = require(... .. '.inputs')

local M = {}

M.palette = require('highlite.color.palette').derive('dark', inputs)

M.terminal_palette = {
   srcery.black,
   srcery.red,
   srcery.green,
   srcery.yellow,
   srcery.blue,
   srcery.magenta,
   srcery.cyan,
   srcery.white,
   srcery.bright_black,
   srcery.bright_red,
   srcery.bright_green,
   srcery.bright_yellow,
   srcery.bright_blue,
   srcery.bright_magenta,
   srcery.bright_cyan,
   srcery.bright_white,
}

return M
