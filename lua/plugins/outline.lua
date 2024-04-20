return {
    "hedyhli/outline.nvim",
    vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", {desc = "Toggle Outline"}),
    config = function ()
        require("outline").setup {
          -- Your setup opts here (leave empty to use defaults)
        }
    end
}
