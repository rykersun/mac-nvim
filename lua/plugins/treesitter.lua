return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function()
        -- treesitter settings
        local configs = require("nvim-treesitter.configs")
        configs.setup({



            ensure_installed = { -- add language to this turple
                "lua", -- lua
                "vim", -- vim
                "java", -- java
                "python", -- python
            },



            sync_install = true, -- set this to true will avoid first time open error
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}

