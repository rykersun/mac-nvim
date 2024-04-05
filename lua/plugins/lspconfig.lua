return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require('lspconfig')
        lspconfig.lua_ls.setup {}
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})

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
        -- Command to toggle diagnostics
        vim.api.nvim_create_user_command(
          'DiagnosticsToggle',
          function()
            local current_value = vim.diagnostic.is_disabled()
            if current_value then
              vim.diagnostic.enable()
            else
              vim.diagnostic.disable()
            end
          end,
          {}
        )
        vim.keymap.set('n', '<leader>d', '<Cmd>DiagnosticsToggleVirtualText<CR>')
        vim.keymap.set('n', '<leader>D', '<Cmd>DiagnosticsToggle<CR>')

    end
}
