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
    { -- mason
        "williamboman/mason.nvim", dependencies = {
            "williamboman/mason-lspconfig.nvim",
        },
    },
    { -- lspconfig
        "neovim/nvim-lspconfig",
    },
    { -- lsp code action ui
        "nvim-telescope/telescope-ui-select.nvim"
    },
    { -- auto pairs
        "windwp/nvim-autopairs"
    },
}
