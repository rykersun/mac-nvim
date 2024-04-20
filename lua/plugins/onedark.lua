return {
    "olimorris/onedarkpro.nvim",
    config = function ()
        require("onedarkpro").setup({
          options = {
            transparency = Transparency
          }
        })
    end
}
