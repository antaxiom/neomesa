local cmd = vim.cmd

-- Questionable and hacky, but files open when I last left off
cmd([[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])

-- Relative number only when in normal mode
cmd[[ au InsertEnter * set norelativenumber ]]
cmd[[ au InsertLeave * set relativenumber ]]
