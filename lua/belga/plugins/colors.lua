function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

end

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require('rose-pine').setup({
				variant = "main",
				dark_variant = "main",
				dim_inactive_windows = false,
				styles = {
					italic = false,
					bold = true,
					-- transparency = true,
				},
				highlight_groups = {
					ColorColumn = { bg = "#1C1C21" },
					Normal = { bg = "none" },  -- Main background remains transparent
					-- NormalFloat = { bg = "#28243c" },  -- Main background remains transparent
					Pmenu = { bg = "#28243c" },  -- Completion menu background
					PmenuSel = { bg = "#4a465d", fg = "#f8f5f2" },  -- Highlighted completion item
					PmenuSbar = { bg = "#191724" },  -- Scrollbar background
					PmenuThumb  = { bg = "#9ccfd8" },  -- Scrollbar thumb
				},
				
				enable = {
					terminal = false,
					legacy_highlights = false,
					migrations = true,
				}
			})
			ColorMyPencils();
		end
	},

	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
				transparent = true, -- Enable this to disable setting the background color
				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
				styles = {
					-- Style to be applied to different syntax groups
					-- Value is any valid attr-list value for `:help nvim_set_hl`
					comments = { italic = false },
					keywords = { italic = false },
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				},
			})
		end
	},

}
