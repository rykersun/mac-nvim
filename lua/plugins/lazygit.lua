return {
    'kdheepak/lazygit.nvim',
    config = function ()
        vim.keymap.set('n', '<leader>l', '<Cmd>LazyGitCurrentFile<CR>')
    end
}
