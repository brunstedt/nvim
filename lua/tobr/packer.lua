-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use { 'nvim-lua/plenary.nvim' }
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.6',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { { "nvim-lua/plenary.nvim" } }
	}
	use {
		'letieu/harpoon-lualine',
		opt = false,
		requires = { { 'ThePrimeagen/harpoon' } }
	}
	use('mbbill/undotree')
	use("nvim-tree/nvim-web-devicons")
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim", }
	}
	use { 'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	}
	use {
		"L3MON4D3/LuaSnip",
		tag = "v2.*",
		run = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" }
	}
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			{ 'neovim/nvim-lspconfig' },
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	}
	use { "williamboman/mason.nvim" }
	use { "zbirenbaum/copilot.lua" }
	use {
		"zbirenbaum/copilot-cmp",
		after = { "copilot.lua" },
		config = function()
			require("copilot_cmp").setup()
		end
	}
	use { "onsails/lspkind.nvim" }
	use { 'lewis6991/gitsigns.nvim' }
	use { 'mhinz/vim-signify' }
	use { "luckasRanarison/tailwind-tools.nvim" }
	use {
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				-- config
			}
		end,
		requires = { 'nvim-tree/nvim-web-devicons' }
	}
	use { "kylechui/nvim-surround", tag = "*" }
	use { "tpope/vim-commentary" }
	use { "pmizio/typescript-tools.nvim",
		requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	}
	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end
	}
	use { 'christoomey/vim-tmux-navigator' }
	use { 'Asheq/close-buffers.vim' }
	use { 'stevearc/conform.nvim' }
	use { "OlegGulevskyy/better-ts-errors.nvim",
		requires = { "MunifTanjim/nui.nvim" }
	}
	use { "xiyaowong/transparent.nvim" }

	-- Themes ---
	use { "scottmckendry/cyberdream.nvim", as = "cyberdream" }
	use { "catppuccin/nvim", as = "catppuccin" }
	use { "rebelot/kanagawa.nvim", as = "kanagawa" }
	use { "diegoulloao/neofusion.nvim", as = "neofusion" }
end
)
