return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local custom_theme = require("lualine.themes.rose-pine")
		custom_theme.normal.c.bg = "#1e1c2e"
		custom_theme.normal.c.fg = "#e1dff4"

		custom_theme.insert.c.bg = "#1e1c2e"
		custom_theme.insert.c.fg = "#e1dff4"

		custom_theme.visual.c.bg = "#1e1c2e"
		custom_theme.visual.c.fg = "#e1dff4"

		custom_theme.command.c.bg = "#1e1c2e"
		custom_theme.command.c.fg = "#e1dff4"

		custom_theme.replace.c.bg = "#1e1c2e"
		custom_theme.replace.c.fg = "#e1dff4"

		custom_theme.inactive.c.bg = "#1e1c2e"
		custom_theme.inactive.c.fg = "#e1dff4"
		require("lualine").setup({
			options = {
				theme = custom_theme
			},
			sections = {
				lualine_c = {{"filename", path=1}}
			}
		})
	end	
}
