if EnableTheme then
    return {
        'nvim-lualine/lualine.nvim',
        config = function ()
            require('lualine').setup({
                options = {
                    theme = 'vscode',
                },
            })
        end
    }
else
    return {
        -- default status line
    }
end

