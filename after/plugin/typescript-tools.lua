require("typescript-tools").setup {
	settings = {
		expose_as_code_action = { "all" },
		jsx_close_tag = {
			enable = true,
			filetypes = { "javascriptreact", "typescriptreact" },
		},
		tsserver_file_preferences = {
			quotePreference = "single",
		}
	}
}
