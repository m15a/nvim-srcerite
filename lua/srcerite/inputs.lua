local srcery = require((...):match '(.+)%.[^.]+' .. '.srcery')

-- c.f. https://github.com/Iron-E/nvim-highlite/blob/master-v4/doc/advanced-usage.md#list-of-palette-colors
return {
   -- annotation = ,
   -- attribute = ,
   bg = srcery.black,
   bg_contrast_high = srcery.xgray2,
   bg_contrast_low = srcery.xgray2,
   boolean = srcery.bright_magenta,
   -- buffer_active = ,
   -- buffer_alternate = ,
   -- buffer_current = ,
   character = srcery.bright_magenta,
   -- character_special = ,
   class = srcery.cyan,
   comment = srcery.bright_black,
   -- comment_documentation = ,
   -- comment_special = ,
   conditional = srcery.red,
   constant = srcery.bright_magenta,
   -- constant_builtin = ,
   constructor = srcery.yellow,
   -- decorator = ,
   define = srcery.cyan,
   diff_add = srcery.green,
   diff_change = srcery.cyan,
   diff_delete = srcery.red,
   enum = srcery.cyan,
   error = srcery.bright_red,
   event = srcery.bright_orange,
   field = srcery.cyan,
   -- field_enum = ,
   float = srcery.bright_magenta,
   fold = srcery.bright_black,
   func = srcery.yellow,
   -- func_builtin = ,
   hint = srcery.bright_cyan,
   identifier = srcery.cyan,
   include = srcery.cyan,
   info = srcery.bright_green,
   interface = srcery.bright_blue,
   -- interface_builtin = ,
   keyword = srcery.red,
   -- keyword_coroutine = ,
   -- keyword_function = ,
   -- keyword_operator = ,
   -- keyword_return = ,
   label = srcery.red,
   loop = srcery.red,
   macro = srcery.orange,
   -- message = ,
   method = srcery.yellow,
   -- namespace = ,
   number = srcery.bright_magenta,
   ok = srcery.bright_green,
   operator = srcery.bright_white,
   -- parameter = ,
   preproc = srcery.cyan,
   -- preproc_conditional = ,
   -- property = ,
   punctuation = srcery.bright_black,
   -- punctuation_bracket = ,
   -- punctuation_delimiter = ,
   -- punctuation_special = ,
   search = srcery.xgray5,
   select = srcery.xgray2,
   special = srcery.magenta,
   statement = srcery.red,
   storage = srcery.orange,
   string = srcery.bright_green,
   -- string_escape = ,
   -- string_regex = ,
   -- string_special = ,
   structure = srcery.cyan,
   syntax_error = srcery.bright_red,
   tag = srcery.cyan,
   -- tag_attribute = ,
   -- tag_delimiter = ,
   text = srcery.bright_white,
   -- text_contrast_bg_high = ,
   -- text_contrast_bg_low = ,
   -- text_environment_name = ,
   -- text_environment = ,
   -- text_literal = ,
   -- text_math = ,
   -- text_reference = ,
   throw = srcery.red,
   todo = srcery.bright_white,
   type = srcery.bright_blue,
   -- type_builtin = ,
   -- type_parameter = ,
   -- uri = ,
   variable = srcery.cyan,
   -- variable_builtin = ,
   warning = srcery.orange,
}