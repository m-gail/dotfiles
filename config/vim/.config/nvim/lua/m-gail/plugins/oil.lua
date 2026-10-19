local nmap = require("m-gail.util.map").nmap

return {
	"stevearc/oil.nvim",
	opts = {
		view_options = {
			show_hidden = true,
		},
		float = {
			border = "rounded",
			padding = 8,
		},
	},
	config = function(_, opts)
		require("oil").setup(opts)

		nmap("<leader>fB", "<cmd>Oil --float<CR>", "Oil at current file")
		nmap("<leader>fb", "<cmd>Oil --float .<CR>", "Oil in cwd")
	end,
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
