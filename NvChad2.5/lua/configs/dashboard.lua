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
				desc = "Open file",
				key = "f",
				keymap = "",
				key_format = " %s", -- remove default surrounding `[]`
				action = "Telescope find_files",
			},
		},
		footer = {},
	},
})
