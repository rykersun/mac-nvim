return {
    'hrsh7th/nvim-cmp',
    config = function()
      -- Set up nvim-cmp.
      local cmp = require'cmp'

      require("luasnip.loaders.from_vscode").lazy_load()

      local luasnip = require('luasnip')
      luasnip.config.set_config({
        region_check_events = 'InsertEnter',
        delete_check_events = 'InsertLeave'
      })

      cmp.setup({
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        completion = {
          completeopt = 'menu,menuone,noinsert'
        },
        mapping = cmp.mapping.preset.insert({
          -- confirm selection
          ['<CR>'] = cmp.mapping.confirm({select = false}),
          ['<C-y>'] = cmp.mapping.confirm({select = false}),
          -- navigate items on the list
          ['<Up>'] = cmp.mapping.select_prev_item(cmp_select_opts),
          ['<Down>'] = cmp.mapping.select_next_item(cmp_select_opts),
          ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select_opts),
          ['<C-n>'] = cmp.mapping.select_next_item(cmp_select_opts),
          -- scroll up and down in the completion documentation
          ['<C-d>'] = cmp.mapping.scroll_docs(5),
          ['<C-u>'] = cmp.mapping.scroll_docs(-5),
          -- toggle completion
          ['<C-e>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.close()
              fallback()
            else
              cmp.complete()
            end
          end),
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.confirm({select = false})
            elseif luasnip.jumpable(1) then
              luasnip.jump(1)
            else
              fallback()
            end
          end, {'i', 's'}),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, {'i', 's'}),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          -- { name = 'vsnip' }, -- For vsnip users.
          { name = 'luasnip' }, -- For luasnip users.
          -- { name = 'ultisnips' }, -- For ultisnips users.
          -- { name = 'snippy' }, -- For snippy users.
        }, {
          { name = 'buffer' },
        })
      })
    end
}
