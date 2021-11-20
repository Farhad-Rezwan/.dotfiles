vim.g.mapleader = ' '                                                         -- space as leader key
local map = vim.api.nvim_set_keymap                                           -- setting local variable as map and setting as map variable
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})                 -- use at normal mode, on control H, to jump, {noremap = , silent = doesnot show :toggle etc.}
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true}) -- when press `space + e` toggles nvimtree

map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

map('v', 'f', ':format', {noremap = true, silent = true})
