-- set tab to 4 spaces
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- enable cursor line
vim.o.cursorline = EnableTheme

-- enable true color
vim.o.termguicolors = EnableTheme

-- set leader key
vim.g.mapleader = " "

-- set line number
vim.o.number = true

-- vim.o => set something
-- vim.g => let something

-- REBIND KEYS

-- buffer
vim.keymap.set('n', 'L', ':bn<CR>')
vim.keymap.set('n', 'H', ':bp<CR>')

-- window
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})

-- quit window
vim.api.nvim_set_keymap('n', '<C-q>', '<C-w>q', {noremap = true, silent = true})

