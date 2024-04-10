-- set tab to 4 spaces
local tab_size = 4

vim.o.expandtab = true
vim.o.tabstop = tab_size
vim.o.softtabstop = tab_size
vim.o.shiftwidth = tab_size

-- enable true color
vim.o.termguicolors = not DisableAll

-- set line number
vim.o.number = true

-- vim.o => set something
-- vim.g => let something

