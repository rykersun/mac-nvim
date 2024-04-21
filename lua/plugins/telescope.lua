local icon = EnableIcon
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    config = function()
        -- telescope settings
        require("telescope").setup({
          pickers = {
            diagnostics = {
              disable_devicons = not icon,
              -- theme = "dropdown",
              -- theme = "cursor",
              theme = "ivy",
            },
            live_grep = {
              disable_devicons = not icon,
              theme = "dropdown",
              -- theme = "cursor",
              -- theme = "ivy",
            },
            lsp_document_symbols = {
              disable_devicons = not icon,
              theme = "dropdown",
              -- theme = "cursor",
              -- theme = "ivy",
            },
            buffers = {
              disable_devicons = not icon,
              show_all_buffers = true,
              sort_lastused = true,
              theme = "dropdown",
              -- theme = "cursor",
              -- theme = "ivy",
              previewer = false,
              mappings = {
                i = {
                  ["<c-d>"] = "delete_buffer",
                }
              }
            },
            find_files = {
              disable_devicons = not icon,
            },
          },
        })
    end
}
