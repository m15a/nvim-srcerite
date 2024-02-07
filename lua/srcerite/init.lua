local M = {}

local srcery = require 'srcerite.srcery'

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

M.palette = require('highlite.color.palette').derive('dark', {
   bg = srcery.black,
   error = srcery.red,
   func = srcery.magenta,
   hint = srcery.bright_magenta,
   info = srcery.bright_yellow,
   warning = srcery.red,
   ok = srcery.bright_green,
   text = srcery.green,
   statement = srcery.cyan,
   storage = srcery.yellow,
})

return M
