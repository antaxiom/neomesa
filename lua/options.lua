local cmd = vim.cmd
local opt = vim.opt
local g = vim.g
local o = vim.o

cmd('syntax enable')
cmd('set nu')
cmd('set mouse=a')

-- Read/write stuff
cmd('set nobackup')
cmd('set nowb')
cmd('set noswapfile')
opt.undofile = false

cmd('set autoread')
cmd('au FocusGained,BufEnter * checktime')

cmd('set undodir=~/.vim_runtime/temp_dirs/undodir')
cmd('set undofile')

opt.ruler = false
opt.hidden = true
opt.ignorecase = true
opt.smartcase = true
opt.splitbelow = true
opt.splitright = true
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 4
opt.clipboard = "unnamedplus"
o.completeopt = "menuone,noselect"
cmd ('set cursorline')
cmd ('set title')
