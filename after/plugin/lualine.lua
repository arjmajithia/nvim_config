local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  gred   = '#fb4934',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
  gblack = '#1a1a1a'
}


local custom_gruvbox = require('lualine.themes.gruvbox')
custom_gruvbox.normal.a.bg = colors.grey
custom_gruvbox.normal.a.fg = colors.white
custom_gruvbox.normal.c.bg = colors.black
custom_gruvbox.insert.c.bg = colors.gblack
custom_gruvbox.insert.a.bg = colors.grey
custom_gruvbox.insert.a.fg = colors.white

custom_gruvbox.command.a.fg = colors.black
custom_gruvbox.command.c.bg = colors.gblack
custom_gruvbox.command.c.fg = colors.white

custom_gruvbox.visual.a.bg = colors.blue
custom_gruvbox.visual.a.fg = colors.black
custom_gruvbox.replace.a.bg = colors.gred
custom_gruvbox.replace.a.fg = colors.black


require('lualine').setup {
  options = { icons_enabled = true,
  theme = custom_gruvbox
  -- theme = 'gruvbox_dark' 
  },
}
