return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')

            -- Install mason lsp and setup lspconfig including ensure_installed turple
            require('mason').setup({})
            require('mason-lspconfig').setup({



              ensure_installed = { -- add new language to this turple
                "lua_ls", -- lua
                -- "jdtls", -- java
                -- "java_language_server", -- java
                "pylsp", -- python
                "clangd", -- c/c++
              },



            })
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            require('mason-lspconfig').setup_handlers({
              function(server)
                lspconfig[server].setup({capabilities = capabilities}) -- auto setup the languages in above turple
              end,
            })

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

            -- Keymaps
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) -- hover doc
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}) -- go to def
            vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, {}) -- code action
            vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {}) -- rename
            vim.keymap.set('n', 'td', '<Cmd>DiagnosticsToggleVirtualText<CR>') -- toggle diagnostics
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim", -- better ui for code action
        config = function()
            require("telescope").setup {
              extensions = {
                ["ui-select"] = {
                  require("telescope.themes").get_cursor { -- choose the ui that telescope have
                  }
                }
              }
            }
            require("telescope").load_extension("ui-select")
        end
    },
}
