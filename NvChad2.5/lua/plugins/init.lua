return {
	-- Formatter
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		config = function()
			require("configs.conform")
		end,
	},
	-- Linter
	{
		"mfussenegger/nvim-lint",
		event = "BufWritePre",
		config = function()
			require("configs.lint")
		end,
	},
	-- LSP config
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},
	-- DAP
	{
		"mfussenegger/nvim-dap",
	},
	-- Package manager
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"stylua",
				"gofumpt",
				"gopls",
			},
		},
	},
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"lua",
				"go",
				"swift",
				"rust",
				"c",
				"cpp",
			},
		},
	},
	-- mpv
	{
		"tamton-aquib/mpv.nvim",
		config = function()
			require("configs.mpv")
		end,
	},
	-- dashboard
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("configs.dashboard")
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
}
