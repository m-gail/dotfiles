return {
	{
		"rose-pine/neovim",
		priority = 1000,
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				styles = {
					bold = false,
				},
				highlight_groups = {
					TelescopeBorder = { fg = "highlight_high", bg = "none" },
					TelescopeNormal = { bg = "none" },
					TelescopePromptNormal = { bg = "base" },
					TelescopeResultsNormal = { fg = "subtle", bg = "none" },
					TelescopeSelection = { fg = "text", bg = "base" },
					TelescopeSelectionCaret = { fg = "rose", bg = "none" },
					OrgHeadlineLevel1 = { fg = "foam" },
					NormalFloat = { bg = "none" },
					FloatBorder = { bg = "none" },
					NotifyBackground = { bg = "#000000" },
					NotifyINFOBorder = { bg = "none" },
					NotifyWARNBorder = { bg = "none" },
					NotifyERRORBorder = { bg = "none" },
					NotifyDEBUGBorder = { bg = "none" },
					NotifyTRACEBUGBorder = { bg = "none" },
					CursorLine = { bg = "surface" },
					Search = { bg = "highlight_med", fg = "none" },
					TreesitterContext = { bg = "overlay" },
					TreesitterContextLineNumber = { bg = "overlay", fg = "subtle" },
					TreesitterContextBottom = { bg = "overlay" },
				},
			})
		end,
	},
	"m-gail/northernlights.vim",
	{
		"rebelot/kanagawa.nvim",
		config = function()
			vim.cmd.colorscheme("kanagawa-dragon")
		end,
	},
}
