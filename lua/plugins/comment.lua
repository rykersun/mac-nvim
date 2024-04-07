return {
    'numToStr/Comment.nvim',
    config = function ()
        require('Comment').setup({
          toggler = {
            line = '<C-/>',
          },
          opleader = {
            line = '<C-/>',
          },
        })
        require('Comment').setup({
            toggler = {
                ---Line-comment toggle keymap
                line = '<leader>c', -- gcc
                ---Block-comment toggle keymap
                block = '<leader>/', -- gbc
            },
            ---LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                ---Line-comment keymap
                line = '<leader>/', -- gc
                ---Block-comment keymap
                block = '<leader>c', -- gb
            },
            ---LHS of extra mappings
            extra = {
                ---Add comment on the line above
                above = 'gcO',
                ---Add comment on the line below
                below = 'gco',
                ---Add comment at the end of line
                eol = 'gcA',
            },
            ---Enable keybindings
            ---NOTE: If given `false` then the plugin won't create any mappings
            mappings = {
                ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
                basic = true,
                ---Extra mapping; `gco`, `gcO`, `gcA`
                extra = true,
            },
        })
    end
}
