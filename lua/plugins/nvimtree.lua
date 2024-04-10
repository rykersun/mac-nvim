local icon = EnableIcon

return {
    "nvim-tree/nvim-tree.lua",
    config = function()

        -- functions use by keymap
        local api = require "nvim-tree.api"
        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, noremap = true, silent = true, nowait = true }
        end

        -- keymap
        -- vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle!<CR>')
        vim.keymap.set('n', '<leader>e', '<Cmd>NvimTreeFindFileToggle!<CR>')

        -- vim.keymap.set('n', '<ESC>', ':NvimTreeClose<CR>')
        vim.keymap.set('n', '<ESC>', '<Cmd>NvimTreeClose<CR>')

        vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))

        -- nvim-tree settings
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require("nvim-tree").setup({
          sort = {
            sorter = "case_sensitive",
          },
          view = {
            width = 30,
          },
          renderer = {
            group_empty = true,
            icons = {
                show = {
                    file = icon,
                    folder = icon,
                    folder_arrow = icon,
                    git = icon,
                    modified = icon,
                    diagnostics = icon,
                    bookmarks = icon,
                },
            },
          },
          filters = {
            dotfiles = true,
          },
        })
    end
}

