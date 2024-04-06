-- set tab to 4 spaces
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- enable true color
vim.o.termguicolors = true

-- set leader key
vim.g.mapleader = " "

-- set line number
vim.o.number = true

-- vim.o => set something
-- vim.g => let something

-- rebind window control keys
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})

-- rebind quit window key
vim.api.nvim_set_keymap('n', '<C-q>', '<C-w>q', {noremap = true, silent = true})

