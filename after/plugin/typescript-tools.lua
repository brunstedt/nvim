require("typescript-tools").setup {
	settings = {
		expose_as_code_action = { "all" },
		jsx_close_tag = {
			enable = false,
			filetypes = { "javascriptreact", "typescriptreact" },
		}
	}
}
