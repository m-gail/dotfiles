local nmap = require("m-gail.util.map").nmap

local layout_config = {
	height = 0.65,
	preview_width = 0.65,
}

return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
		require("telescope").setup({
			defaults = vim.tbl_extend("force", require("telescope.themes").get_ivy(), {
				sorting_strategy = "ascending",
				results_title = false,
				prompt_prefix = " ",
				selection_caret = " ",
				path_display = { "truncate" },
				layout_config = layout_config,
			}),
			pickers = {
				find_files = {
					layout_config = layout_config,
				},
				live_grep = {
					layout_config = layout_config,
				},
			},
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
				["ui-select"] = {
					require("telescope.themes").get_cursor({}),
				},
			},
		})
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("ui-select")

		nmap("<leader>ff", ":Telescope find_files<CR>", "Find files")
		nmap("<leader>fS", function()
			require("telescope.builtin").lsp_dynamic_workspace_symbols({
				symbols = { "interface", "class", "constructor", "function", "method" },
			})
		end, "Workspace symbols")
		nmap("<leader>fs", function()
			require("telescope.builtin").lsp_document_symbols({
				symbols = { "interface", "class", "constructor", "function", "method" },
			})
		end, "File symbols")
		nmap("<leader>fg", ":Telescope live_grep<CR>", "Grep files")
		nmap("<leader>b", function()
			require("telescope.builtin").buffers({ sort_mru = true })
		end)
		nmap("<leader>fd", function()
			require("telescope.builtin").diagnostics()
		end)
		nmap("<leader>fh", function()
			require("telescope.builtin").help_tags()
		end)
	end,
}
