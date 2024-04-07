return {
    "hedyhli/outline.nvim",
    config = function ()
        require("outline").setup {
            symbols = {
              -- disable all icons
              -- icon_fetcher = function(_) return "" end,

              -- icons -> pure text
              icon_fetcher = function(kind) return kind:sub(1,1) end,
            }
        }
        vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })
    end
}
