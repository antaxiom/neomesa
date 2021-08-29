local scheme = require('scheme')
local cmd = vim.cmd

require('bootstrap')

-- basic command settings
cmd('set mouse=a')
cmd('syntax on')

-- load keybindings and editor options
require('keymap')
require('autocmds')
require('options')

-- load all of the packer plugins stuff
require('plugins')

-- enable true color
vim.opt.termguicolors = true

-- Load Themes

-- load editor color theme and lualine scheme
-- scheme.load_scheme('toodark')
-- scheme.load_lualine_scheme('todark')
-- if you don't want to specify the theme for each component, you can use the following function

scheme.load_shared_scheme('toodark')

-- Individual plugin configs
require('config.autopairs')
require('config.lsp')
require('config.lspkind')
cmd('source ~/.config/nvim/lua/config/vimwiki.vim') -- gave up on writing this config in lua, cry about it
require('config.nvim-compe')
require('config.nvim-comment')
require('config.nvim-treesitter')
require('config.nvim-colorizer')
require('config.nvim-bufferline')
require('config.neoscroll')
require('config.lualine')
require('config.gitsigns')
require('config.dashboard')
