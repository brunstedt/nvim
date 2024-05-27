require("tailwind-tools").setup({
	document_color = {
		kind = "background",
	}
})

vim.keymap.set('n', '<leader>tw', '<CMD>TailwindColorToggle<CR>')
