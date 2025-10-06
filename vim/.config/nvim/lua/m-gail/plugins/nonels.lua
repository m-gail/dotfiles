return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	init = function()
		require("null-ls").setup({
			sources = {
				require("none-ls.code_actions.eslint_d"),
				require("null-ls").builtins.formatting.black,
				require("null-ls").builtins.formatting.isort,
				require("null-ls").builtins.formatting.prettier,
				require("null-ls").builtins.formatting.shfmt,
				require("null-ls").builtins.formatting.djlint,
				require("null-ls").builtins.formatting.stylua,
				require("none-ls.diagnostics.eslint_d"),
				require("null-ls").builtins.diagnostics.djlint,
				require("null-ls").builtins.formatting.asmfmt,
			},
		})
	end,
}
