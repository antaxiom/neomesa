local cmd = vim.cmd
local function map (mode, bind, exec, opts)
	local options = {noremap = true, silent = true}
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, bind, exec, opts)
end

local opt = {}  --empty opt for maps with no extra options

-- MAPPING:
--	map takes 4 args:
--		The first is the type, whether in all, normal, insert etc. (reference: https://github.com/nanotee/nvim-lua-guide#defining-mappings)
--		The Second Arg is the keybind. Just like normal vim way
--		The Third is the command to execute
--		The Fourth is other extra options
--
--	Example:  (toggles line numbers)
--		map("n", "<C-n>", ":set rnu!<Cr>", opt)

--map leader
cmd('let mapleader=","')

-- copy full file content
map("n", "<C-a>", ":%y+<CR>", opt)

-- nvim-tree binds
map("", "<leader>t", ":NvimTreeToggle<Cr>", opt)

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn['vsnip#available'](1) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn['vsnip#jumpable'](-1) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end

-- compe keybinds
map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})


-- buffer management
map("n", "<C-l>", ":bn<CR>", opt)
map("n", "<C-h>", ":bp<CR>", opt)

-- dashboard pullup
map ("n", "<leader>d", ":Dashboard<CR>", opt)

-- telescope pullup
map("n", "<leader>f", ":Telescope find_files<CR>", opt)
map("n", "<leader>F", ":Telescope file_browser<CR>", opt)

-- Disable highlight when <Esc> is pressed
map("n", "<Esc>", ":noh<cr>", opt)

-- These commands will navigate through buffers in order regardless of which mode you are using
map("n", "<A-.>", ":BufferLineCycleNext<CR>", opt)
map("n", "<A-,>", ":BufferLineCyclePrev<CR>", opt)

-- These commands will move the current buffer backwards or forwards in the bufferline
map("n", "<A->>", ":BufferLineMoveNext<CR>", opt)
map("n", "<A-<>", ":BufferLineMovePrev<CR>", opt)

-- Buffer Picking
map("n", "<A-c>", ":BufferLinePick<CR>", opt)
map("n", "<A-C>", ":BufferLinePickClose<CR>", opt)

