-- LuaFormatter off
local colors = {
  base_fg 	= '#000000',
  light_fg	= '#dddddd',
  secondary	= '#1a1a1a',
  background	= '#141414',
  norm_bg 	= '#61afef',
  ins_bg	= '#f97f04',
  vis_bg	= '#e579d3',
  rep_bg	= '#e23f36',
  cmd_bg	= '#61afef',
  int_bg	= '#202020',
}
--LuaFormatter on
return {
  normal = {
    a = {bg = colors.norm_bg, fg = colors.base_fg, gui = 'bold'},
    b = {bg = colors.secondary, fg = colors.light_fg},
    c = {bg = colors.background, fg = colors.light_fg},
  },
  insert = {
    a = {bg = colors.ins_bg, fg = colors.base_fg, gui = 'bold'},
    b = {bg = colors.secondary, fg = colors.light_fg},
    c = {bg = colors.background, fg = colors.light_fg}
  },
  visual = {
    a = {bg = colors.vis_bg, fg = colors.base_fg, gui = 'bold'},
    b = {bg = colors.secondary, fg = colors.light_fg},
    c = {bg = colors.background, fg = colors.light_fg}
  },
  replace = {
    a = {bg = colors.rep_bg, fg = colors.base_fg, gui = 'bold'},
    b = {bg = colors.secondary, fg = colors.light_fg},
    c = {bg = colors.background, fg = colors.light_fg}
  },
  command = {
    a = {bg = colors.cmd_bg, fg = colors.base_fg, gui = 'bold'},
    b = {bg = colors.secondary, fg = colors.light_fg},
    c = {bg = colors.background, fg = colors.light_fg}
  },
  inactive = {
    a = {bg = colors.int_bg, fg = colors.light_fg, gui = 'bold'},
    b = {bg = colors.secondary, fg = colors.light_fg},
    c = {bg = colors.background, fg = colors.light_fg}
  }
}
