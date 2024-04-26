local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions

	lsp_zero.default_keymaps({ buffer = bufnr })
	local opts = { buffer = bufnr }
	vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', opts)
	vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>', opts)
	vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', opts)

	lsp_zero.buffer_autoformat()
end)

lsp_zero.set_sign_icons({
	error = '✘',
	warn = '▲',
	hint = '⚑',
	info = '»',
})
