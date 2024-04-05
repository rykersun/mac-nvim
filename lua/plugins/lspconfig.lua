return {
    {

        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')

            lspconfig.lua_ls.setup {}
            lspconfig.pylsp.setup {}

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>c', vim.lsp.buf.code_action, {})

            -- Command to toggle inline diagnostics
            vim.api.nvim_create_user_command(
              'DiagnosticsToggleVirtualText',
              function()
                local current_value = vim.diagnostic.config().virtual_text
                if current_value then
                  vim.diagnostic.config({virtual_text = false})
                else
                  vim.diagnostic.config({virtual_text = true})
                end
              end,
              {}
            )
            vim.keymap.set('n', 'td', '<Cmd>DiagnosticsToggleVirtualText<CR>')

        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup {
              extensions = {
                ["ui-select"] = {
                  require("telescope.themes").get_dropdown {
                  }
                }
              }
            }
            -- To get ui-select loaded and working with telescope, you need to call
            -- load_extension, somewhere after setup function:
            require("telescope").load_extension("ui-select")
        end

    },
}
