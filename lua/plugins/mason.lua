return {
    "williamboman/mason.nvim", dependencies = {"williamboman/mason-lspconfig.nvim"},
    config = function()
        require("mason").setup()
        vim.keymap.set('n', '<leader>m', '<Cmd>Mason<CR>')
        require("mason-lspconfig").setup {
            ensure_installed = {"lua_ls", "jdtls", "pylsp"},
        }
    end,
}
