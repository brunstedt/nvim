local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local lspkind = require("lspkind")

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		-- Confirm completion
		['<CR>'] = cmp.mapping.confirm({ select = false }),

		-- Ctrl+Space to trigger completion menu
		['<C-Space>'] = cmp.mapping.complete(),

		-- Scroll up and down the documentation window
		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-d>'] = cmp.mapping.scroll_docs(4),

		-- Navigate between snippet placeholders
		['<tab>'] = cmp_action.luasnip_jump_forward(),
		['<S-tab>'] = cmp_action.luasnip_jump_backward(),
	}),
	sources = {
		{ name = 'copilot',  group_index = 2 },
		{ name = 'nvim_lsp', group_index = 2 },
		{ name = 'path',     group_index = 2 },
		{ name = 'luasnip',  group_index = 2 },
	},
	sorting = {
		priority_weight = 2,
		comparators = {
			require("copilot_cmp.comparators").prioritize,
		}
	},
	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol',       -- show only symbol annotations
			maxwidth = 60,         -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
			ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
			show_labelDetails = true, -- show labelDetails in menu. Disabled by default
			symbol_map = { Copilot = "" },
			before = require("tailwind-tools.cmp").lspkind_format
			-- The function below will be called before any actual modifications from lspkind
			-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
			-- before = function(entry, vim_item)
			--	return vim_item
			-- end
		})
	}
})
