-- installed plugins (Plugin list)
return {
    { -- telescope
        'nvim-telescope/telescope.nvim', tag = '0.1.6', -- a very powerful fuzzy file finder
          dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { -- vscode dark theme
        'Mofiqul/vscode.nvim' -- theme
    },
    { -- treesitter
        "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" -- make your code more colorful
    },
    { -- neotree
        "nvim-neo-tree/neo-tree.nvim", -- file system explorer
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- file icon
          "MunifTanjim/nui.nvim",
        }
    },
    { -- completions
        'hrsh7th/nvim-cmp', dependencies = { -- completion framwork
            'L3MON4D3/LuaSnip', -- completion sources
            'rafamadriz/friendly-snippets', -- another completion sources but gives vscode-like completions
            'saadparwaiz1/cmp_luasnip', -- this plugin finished the completion
            'hrsh7th/cmp-nvim-lsp', -- i don't understand yet...
        },
    },
    { -- mason
        "williamboman/mason.nvim", dependencies = { -- mason lsp
            "williamboman/mason-lspconfig.nvim", -- gives mason lsp en ensure_installed turple
        },
    },
    { -- lspconfig
        "neovim/nvim-lspconfig", -- all lsp config in this plugin's config file
    },
    { -- lsp code action ui
        "nvim-telescope/telescope-ui-select.nvim" -- better ui for lsp code action
    },
    { -- auto pairs
        "windwp/nvim-autopairs" -- auto complete your bracket
    },
    { -- comment
        'numToStr/Comment.nvim', lazy = false,  -- comment your code
    },
}
