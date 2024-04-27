local telescope = require('telescope')


telescope.setup {
	defaults = {
		mappings = {
			i = {
				["<C-j>"] = "move_selection_next",
				["<C-k>"] = "move_selection_previous",
				--				["<C-a>"] = require 'telescope'.extensions.send_to_harpoon.actions.send_selected_to_harpoon
			}
		}
	}
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>FF', builtin.git_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader><leader>', builtin.buffers, {})
