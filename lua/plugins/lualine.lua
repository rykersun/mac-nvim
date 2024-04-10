if EnableTheme then
    return {
        'nvim-lualine/lualine.nvim',
        config = function ()
            require('lualine').setup({
                options = {
                    icons_enabled = EnableIcon,
                    theme = Theme,
                    section_separators = '',
                    component_separators = { left = '', right = ''},
                },
            })
        end
    }
else
    return {
        -- default status line
    }
end

