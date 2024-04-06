return {
    'kdheepak/lazygit.nvim',
    config = function ()
        vim.keymap.set('n', '<leader>l', ':LazyGitCurrentFile<CR>')
    end
}
