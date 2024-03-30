local dashboard = require("dashboard")

local ogre = {
	[[                                     ]],
	[[                                     ]],
	[[                                     ]],
	[[                                     ]],
	[[      __                _            ]],
	[[   /\ \ \___  ___/\   /(_)_ __ ___   ]],
	[[  /  \/ / _ \/ _ \ \ / | | '_ ` _ \  ]],
	[[ / /\  |  __| (_) \ V /| | | | | | | ]],
	[[ \_\ \/ \___|\___/ \_/ |_|_| |_| |_| ]],
	[[                                     ]],
	[[                                     ]],
	[[                                     ]],
	[[                                     ]],
	[[                                     ]],
}

dashboard.setup({
	theme = "doom",
	config = {
		header = ogre,
		center = {
			{
				icon = "   ",
				desc = "New file",
				key = "n",
				keymap = "",
				key_format = " %s",
				action = "ene",
			},
			{
				icon = "   ",
				desc = "Open file",
				key = "f",
				keymap = "",
				key_format = " %s",
				action = "Telescope find_files",
			},
			{
				icon = "   ",
				desc = "Recent files",
				key = "r",
				keymap = "",
				key_format = " %s",
				action = "Telescope oldfiles",
			},
			{
				icon = "   ",
				desc = "Find text",
				key = "t",
				keymap = "",
				key_format = " %s",
				action = "Telescope live_grep",
			},
			{
				icon = "   ",
				desc = "Lazy",
				key = "l",
				keymap = "",
				key_format = " %s",
				action = "Lazy",
			},
			{
				icon = "   ",
				desc = "Mason",
				key = "m",
				keymap = "",
				key_format = " %s",
				action = "Mason",
			},
			{
				icon = "   ",
				desc = "Quit",
				key = "q",
				keymap = "",
				key_format = " %s",
				action = "qa",
			},
		},
		footer = {},
	},
})
