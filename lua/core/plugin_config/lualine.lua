local auto_session_library = require("auto-session.lib")
require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "gruvbox",
	},
	sections = {
		lualine_a = {
			{
				"filename",
				path = 1,
			},
		},
		lualine_c = {
			auto_session_library.current_session_name,
		},
	},
})
