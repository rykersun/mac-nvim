EnableIcon = false

-- lazy.nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--load vim settings
require("vimsettings")

-- load lazy.nvim
require("lazy").setup("plugins")

-- show lazy.nvim menu
vim.keymap.set('n', '<leader>p', '<Cmd>Lazy<CR>')

