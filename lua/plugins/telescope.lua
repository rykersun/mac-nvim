return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    config = function()
        -- telescope settings
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.api.nvim_set_keymap('n', '<leader>fd', ':lua require"telescope.builtin".diagnostics({ bufnr = 0 })<CR>', {noremap = true, silent = true})
        vim.api.nvim_set_keymap('n', '<leader>ff', ':lua require"telescope.builtin".find_files({ hidden = false })<CR>', {noremap = true, silent = true})
        vim.api.nvim_set_keymap('n', '<leader>fF', ':lua require"telescope.builtin".find_files({ hidden = true })<CR>', {noremap = true, silent = true})
        vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
        local actions = require("telescope.actions")
        require("telescope").setup({
          defaults = {
            mappings = {
              i = {
                ["<esc>"] = actions.close,
              },
            },
          },
          pickers = {
            diagnostics = {
              -- theme = "dropdown",
              -- theme = "cursor",
              theme = "ivy",
            },
            live_grep = {
              theme = "dropdown",
              -- theme = "cursor",
              -- theme = "ivy",
            },
            lsp_document_symbols = {
              theme = "dropdown",
              -- theme = "cursor",
              -- theme = "ivy",
            },
            buffers = {
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
            }
          },
        })
    end
}
