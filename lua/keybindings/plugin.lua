-- index

-- mason -- OK
-- outline -- OK
-- comment -- OK
-- lazygit -- OK
-- nvimtree -- OK
-- telescope -- OK
-- package manager -- OK
-- lspconfig
-- completions



-- show mason menu
vim.keymap.set('n', '<leader>m', '<Cmd>Mason<CR>')

-- outline keymaps
vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", {desc = "Toggle Outline"})

-- show lazy.nvim menu
vim.keymap.set('n', '<leader>p', '<Cmd>Lazy<CR>')

-- lazygit keymaps
vim.keymap.set('n', '<leader>l', '<Cmd>LazyGitCurrentFile<CR>')


-- telescope keymaps
local builtin = require('telescope.builtin')
local actions = require("telescope.actions")
vim.keymap.set('n', '<leader>w', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.api.nvim_set_keymap('n', '<leader>d', ':lua require"telescope.builtin".diagnostics({ bufnr = 0 })<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>f', ':lua require"telescope.builtin".find_files({ hidden = false })<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>F', ':lua require"telescope.builtin".find_files({ hidden = true })<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>s', builtin.lsp_document_symbols, {})
require("telescope").setup({
    defaults = {
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            ["<Tab>"] = actions.select_default + actions.center,
          },
        },
    },
})

-- nvimtree keymaps
-- local api = require "nvim-tree.api"
local function opts(desc)
  return { desc = "nvim-tree: " .. desc, noremap = true, silent = true, nowait = true }
end
vim.keymap.set('n', '<leader>e', '<Cmd>NvimTreeFindFileToggle!<CR>')
-- vim.keymap.set('n', '<ESC>', '<Cmd>NvimTreeClose<CR>')
-- vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))


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

