local scheme = require('scheme')

local lualine_theme = require('themes.lualine.'..scheme.scheme)

local function icon() return [[]] end

require('lualine').setup{
	options = {
		section_separators = {'', ''},
  		component_separators = {'', ''},
		theme = lualine_theme
	},
	sections = {
		lualine_a = {icon},
		lualine_b = {'filetype'},
		lualine_c = {'filename'},
		lualine_x = {'branch'},
		lualine_y = {'mode'},
		lualine_z = {'location'},
	}
}
