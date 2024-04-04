-- installed plugins
return {
    { -- telescope
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
          dependencies = { 'nvim-lua/plenary.nvim' }
    }, 
    { -- vscode dark theme
        'Mofiqul/vscode.nvim'
    }, 
    { -- treesitter
        "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
    }, 
    { -- neotree
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons",
          "MunifTanjim/nui.nvim",
        }
    }, 
    { -- completions
        'hrsh7th/nvim-cmp', dependencies = {
            'L3MON4D3/LuaSnip', 
            'saadparwaiz1/cmp_luasnip', 
            'rafamadriz/friendly-snippets', 
        }, 
    }, 
}
