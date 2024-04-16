-- index

-- package manager -- OK
-- mason -- OK
-- comment -- OK
-- completions
-- lazygit -- OK
-- lspconfig
-- nvimtree
-- telescope

-- show lazy.nvim menu
vim.keymap.set('n', '<leader>p', '<Cmd>Lazy<CR>')

-- show mason menu
vim.keymap.set('n', '<leader>m', '<Cmd>Mason<CR>')

-- keymaps for comment code
require('Comment').setup({ -- vscode-like keymaps
  toggler = {
    line = '<C-/>',
  },
  opleader = {
    line = '<C-/>',
  },
})
require('Comment').setup({ -- when <C-/> not working
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

-- lazygit keymaps
vim.keymap.set('n', '<leader>l', '<Cmd>LazyGitCurrentFile<CR>')
