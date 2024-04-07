local icon = EnableIcon

return {
    "hedyhli/outline.nvim",
    config = function ()
        if not icon then
            require("outline").setup {
                symbols = {
                  -- disable all icons
                  -- icon_fetcher = function(_) return "" end,

                  -- icons -> pure text
                  icon_fetcher = function(kind) return kind:sub(1,1) end,
                }
            }
        else
            require("outline").setup {}
        end
        vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })
    end
}
