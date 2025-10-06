local artworks = require("m-gail.util.artworks")

return {
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		opts = {
			presets = {
				bottom_search = true,
				lsp_doc_border = true,
			},
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					always_divide_middle = true,
					globalstatus = false,
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "filename" },
					lualine_x = {
						{
							require("noice").api.status.mode.get,
							cond = require("noice").api.status.mode.has,
							color = { fg = "#6ca632" },
						},
						"encoding",
						"fileformat",
					},
					lualine_y = { "filetype" },
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_a = { "filename" },
					lualine_b = {},
					lualine_c = {},
					lualine_x = {},
					lualine_y = { "filetype" },
					lualine_z = { "location" },
				},
				tabline = {},
				extensions = {},
			})
		end,
	},
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local theme = require("alpha.themes.dashboard")
			math.randomseed(os.time())
			theme.section.header.val = artworks[math.random(1, #artworks)]

			theme.section.buttons.val = {
				theme.button("SPC H", "Harpoon Menu"),
				theme.button("SPC f f", "Find File"),
				theme.button("SPC f g", "Live Grep"),
				theme.button("SPC f b", "File Browser"),
			}

			theme.section.header.opts.hl = "AlphaHeader"

			theme.section.footer.val = {
				"",
				"",
				"",
				"Have fun with neovim!",
			}
			theme.section.footer.opts.hl = "AlphaFooter"

			require("alpha").setup(theme.config)
		end,
	},
}
