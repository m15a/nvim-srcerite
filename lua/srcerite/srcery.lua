-- Srcery v1.0.4
-- https://www.npmjs.com/package/@srcery-colors/srcery-palette

local palette = {
   black = { index = 0, hex = '#1C1B19' },
   red = { index = 1, hex = '#EF2F27' },
   green = { index = 2, hex = '#519F50' },
   yellow = { index = 3, hex = '#FBB829' },
   blue = { index = 4, hex = '#2C78BF' },
   magenta = { index = 5, hex = '#E02C6D' },
   cyan = { index = 6, hex = '#0AAEB3' },
   white = { index = 7, hex = '#BAA67F' },
   bright_black = { index = 8, hex = '#918175' },
   bright_red = { index = 9, hex = '#F75341' },
   bright_green = { index = 10, hex = '#98BC37' },
   bright_yellow = { index = 11, hex = '#FED06E' },
   bright_blue = { index = 12, hex = '#68A8E4' },
   bright_magenta = { index = 13, hex = '#FF5C8F' },
   bright_cyan = { index = 14, hex = '#2BE4D0' },
   bright_white = { index = 15, hex = '#FCE8C3' },
   orange = { index = 202, hex = '#FF5F00' },
   bright_orange = { index = 208, hex = '#FF8700' },
   hard_black = { index = 233, hex = '#121212' },
   teal = { index = 30, hex = '#008080' },
   xgray1 = { index = 235, hex = '#262626' },
   xgray2 = { index = 236, hex = '#303030' },
   xgray3 = { index = 237, hex = '#3A3A3A' },
   xgray4 = { index = 238, hex = '#444444' },
   xgray5 = { index = 239, hex = '#4E4E4E' },
   xgray6 = { index = 240, hex = '#585858' },
   xgray7 = { index = 241, hex = '#626262' },
   xgray8 = { index = 242, hex = '#6C6C6C' },
   xgray9 = { index = 243, hex = '#767676' },
   xgray10 = { index = 244, hex = '#808080' },
   xgray11 = { index = 245, hex = '#8A8A8A' },
   xgray12 = { index = 246, hex = '#949494' },
}

return setmetatable({}, {
   __index = function(_, attr)
      if attr == 'index' then
         return setmetatable({}, {
            __index = function(_, name)
               return palette[name].index
            end,
         })
      elseif attr == 'hex' then
         return setmetatable({}, {
            __index = function(_, name)
               return palette[name].hex
            end,
         })
      else
         return palette[attr].hex
      end
   end,
})
