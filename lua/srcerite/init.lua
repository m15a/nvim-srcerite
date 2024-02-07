local M = {}

local srcery = require 'srcerite.srcery'

M.terminal_palette = {
   srcery.black.hex,
   srcery.red.hex,
   srcery.green.hex,
   srcery.yellow.hex,
   srcery.blue.hex,
   srcery.magenta.hex,
   srcery.cyan.hex,
   srcery.white.hex,
   srcery.bright_black.hex,
   srcery.bright_red.hex,
   srcery.bright_green.hex,
   srcery.bright_yellow.hex,
   srcery.bright_blue.hex,
   srcery.bright_magenta.hex,
   srcery.bright_cyan.hex,
   srcery.bright_white.hex,
}

M.palette = require('highlite.color.palette').derive('dark', {
   bg = srcery.black.hex,
   error = srcery.red.hex,
   func = srcery.magenta.hex,
   hint = srcery.bright_magenta.hex,
   info = srcery.bright_yellow.hex,
   warning = srcery.red.hex,
   ok = srcery.bright_green.hex,
   text = srcery.green.hex,
   statement = srcery.cyan.hex,
   storage = srcery.yellow.hex,
})

return M
