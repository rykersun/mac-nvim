-- installed plugins (Plugin list)
return {
    { -- telescope
        'nvim-telescope/telescope.nvim', -- a very powerful fuzzy file finder
        tag = '0.1.6',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
    },
    { -- vscode dark theme
        'Mofiqul/vscode.nvim', -- colorscheme
    },
    { -- catppuccin theme
        "catppuccin/nvim",
        priority = 1000, -- colorscheme
    },
    { -- tokyonight theme
        "folke/tokyonight.nvim", -- colorscheme
        lazy = false,
        priority = 1000,
        opts = {},
    },
    { -- treesitter
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate", -- make your code more colorful
    },
    { -- nvimtree
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },
    { -- completions
        'hrsh7th/nvim-cmp',
        dependencies = { -- completion framwork
            'L3MON4D3/LuaSnip', -- completion sources
            'rafamadriz/friendly-snippets', -- another completion sources but gives vscode-like completions
            'saadparwaiz1/cmp_luasnip', -- this plugin finished the completion
            'hrsh7th/cmp-nvim-lsp', -- i don't understand yet...
        },
    },
    { -- mason
        "williamboman/mason.nvim",
        dependencies = { -- mason lsp
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
        "windwp/nvim-autopairs", -- auto complete your bracket
    },
    { -- comment
        'numToStr/Comment.nvim',
        lazy = false,  -- comment your code
    },
    { -- lazygit
        'kdheepak/lazygit.nvim', -- floating lazygit
    },
    { -- better UI for neovim
        'stevearc/dressing.nvim', -- dress up your text editor
    },
    { -- lualine
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },
    { -- outline
        "hedyhli/outline.nvim",
    },
}
