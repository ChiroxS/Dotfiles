require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>tr", function()
	require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })

map("n", "<leader>mv", function()
	require("mpv").toggle_player()
end, { desc = "Toggle Music Player" })
