local map = require("m-gail.util.map").map

return {
	"stevearc/conform.nvim",
	init = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "prettier" },
				vue = { "prettier" },
			},
		})
		map({ "n", "v" }, "<leader>sf", function()
			require("conform").format({ async = true })
		end, "format")
	end,
}
