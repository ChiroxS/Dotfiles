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
}
