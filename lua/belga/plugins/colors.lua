return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			variant = "main",
			dark_variant = "main",
			dim_inactive_windows = false,
			styles = {
				italic = false,
				bold = true,
				transparency = true,
			},
			highlight_groups = {
				Normal = { bg = "none" }, -- Main background remains transparent
				NormalFloat = { bg = "#28243c" }, -- Main background remains transparent
				Pmenu = { bg = "#28243c" }, -- Completion menu background
				PmenuSel = { bg = "#4a465d", fg = "#f8f5f2" }, -- Highlighted completion item
				PmenuSbar = { bg = "#191724" }, -- Scrollbar background
				PmenuThumb = { bg = "#9ccfd8" }, -- Scrollbar thumb

				TelescopeBorder = { fg = "highlight_high", bg = "none" },
				TelescopeNormal = { bg = "none" },
				TelescopePromptNormal = { bg = "none" },
				TelescopeResultsNormal = { fg = "subtle", bg = "none" },
				TelescopeSelection = { fg = "text", bg = "none" },
				TelescopeSelectionCaret = { fg = "rose", bg = "none" },
			},
			enable = {
				terminal = false,
				legacy_highlights = false,
				migrations = true,
			},
		})
		vim.cmd("colorscheme rose-pine")
	end,
}
