return {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
        -- neotree settings
        vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>')
    end

}

