vim.keymap.set(
	{"n", "x"},
	"<leader>rr",
	function() require('telescope').extensions.refactoring.refactors() end
)

vim.keymap.set(
	{"n", "x"},
	"<leader>rf",
	function() require('refactoring').refactor("Extract Function") end
)

vim.keymap.set(
	{"n", "x"},
	"<leader>rv",
	function() require('refactoring').refactor("Extract Variable") end
)
