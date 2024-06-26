EnableIcon = true
EnableTheme = true
Transparency = true
RainbowIndent = false

Theme =
    -- "vscode"
    -- "catppuccin"
    -- "onedark"
    -- "github_dark"
    "gruvbox"
    -- "tokyonight"
    -- "oxocarbon"

DisableAll = false

if DisableAll then
    EnableIcon = false
    EnableTheme = false
end

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

-- load neovide settings
require("gui.neovide")

-- load vim keybindings
require("keybindings.vim")

-- load lazy.nvim
require("lazy").setup("plugins")

-- load plugin keybindings
require("keybindings.plugin")

if EnableTheme then
    vim.cmd("colorscheme " .. Theme)
end

