return {
	"m-gail/diagnostic_manipulation.nvim",
	init = function()
		require("diagnostic_manipulation").setup({
			blacklist = {
				function (diagnostic)
					if diagnostic.code == "@typescript-eslint/no-unused-vars" then
						diagnostic.severity = vim.diagnostic.severity.HINT
					end
					return false
				end
			},
			whitelist = {
			},
		})
	end,
}
