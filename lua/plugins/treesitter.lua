return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function()
        -- treesitter settings
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            -- ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
            ensure_installed = {"lua", "vim", "java", "python"},
            sync_install = true, -- set this to true will avoid first time open error
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}

