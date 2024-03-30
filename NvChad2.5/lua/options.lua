require("nvchad.options")

-- add yours here!

local o = vim.o
o.cursorlineopt = "both"
o.relativenumber = true

require("base46").toggle_transparency()

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.metal" },
	command = "setfiletype metal",
})

require("ibl").overwrite({
	exclude = {
		filetypes = { "dashboard" },
	},
})
