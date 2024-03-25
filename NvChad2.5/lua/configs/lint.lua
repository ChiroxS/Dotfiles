local lint = require("lint")

lint.linters_by_ft = {
	swift = { "swiftlint" },
	go = { "golangcilint" },
}

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	group = lint_augroup,
	callback = function()
		require("lint").try_lint()
	end,
})

local ns = require("lint").get_namespace("swiftlint")
vim.diagnostic.config({
	virtual_text = false,
}, ns)
