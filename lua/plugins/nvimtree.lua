local icon = EnableIcon

return {
    "nvim-tree/nvim-tree.lua",
    config = function()
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

