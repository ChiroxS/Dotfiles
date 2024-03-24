require("nvchad.options")

-- add yours here!

local o = vim.o
o.cursorlineopt = "both"
o.relativenumber = true

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.metal" },
	command = "setfiletype metal",
})
