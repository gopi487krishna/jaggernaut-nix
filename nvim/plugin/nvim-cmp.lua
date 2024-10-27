local cmp = require("cmp")
local icons = {
	Text 	 = "󰦨 Text",
	Variable = "󰀫 Variable",
	Snippet  = "<> Snippet",
	Property = " Property",
	Function = "󰊕 Function",
	Field	   = " Field",
}
cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered({
			border = "double"
		}),
		documentation = cmp.config.window.bordered(),
	},

	formatting = {
		format = function(_, vim_item)
			vim_item.kind = icons[vim_item.kind] or vim_item.kind
			return vim_item
		end
	},
	mapping = cmp.mapping.preset.insert({
  				['<C-b>'] = cmp.mapping.scroll_docs(-4),
  				['<C-f>'] = cmp.mapping.scroll_docs(4),
  				['<C-Space>'] = cmp.mapping.complete(),
  				['<C-e>'] = cmp.mapping.abort(),
  				['<CR>'] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp'},
		{ name = 'luasnip' },
    { name = 'plugins' },
    { name = 'path'    },
    { name = 'buffer'  },
	})
})
