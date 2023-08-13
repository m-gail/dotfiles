vim.keymap.set(
	{"n", "x"},
	"<leader>rr",
	function() require('telescope').extensions.refactoring.refactors() end
)

vim.keymap.set(
	{"n", "x"},
	"<leader>ref",
	function() require('telescope').refactor("Extract Function") end
)

vim.keymap.set(
	{"n", "x"},
	"<leader>rev",
	function() require('telescope').refactor("Extract Variable") end
)
