local util_map = require("m-gail.util.map").map
local util_nmap = require("m-gail.util.map").nmap

local vue_language_server_path = vim.fn.stdpath("data")
	.. "/mason/packages/vue-language-server/node_modules/@vue/language-server"
local vue_plugin = {
	name = "@vue/typescript-plugin",
	location = vue_language_server_path,
	languages = { "vue" },
	configNamespace = "typescript",
}
local tsserver_filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" }
local disable_formatting_for = { "vue_ls" }

local servers = {
	lua_ls = {
		settings = {
			Lua = {
				format = { enable = false },
				runtime = { version = "LuaJIT" },
				workspace = {
					checkThirdParty = false,
					library = {
						"${3rd}/luv/library",
						unpack(vim.api.nvim_get_runtime_file("", true)),
					},
				},
				diagnostics = { disable = { "missing-fields" } },
			},
		},
	},
	pyright = {},
	rust_analyzer = {},
	html = {},
	cssls = {},
	jsonls = {},
	tailwindcss = {},
	emmet_language_server = {},
	svelte = {},
	vue_ls = {},
	gopls = {},
	ansiblels = {},
	vimls = {},
	taplo = {},
	bashls = {},
	clangd = {},
	zls = {
		settings = {
			enable_autofix = false,
		},
	},
	vtsls = {
		settings = {
			typescript = {
				inlayHints = {
					parameterNames = {
						enabled = "all",
					},
					variableTypes = {
						enabled = true,
					},
				},
				suggest = {
					completeFunctionCalls = true,
				},
			},
			vtsls = {
				tsserver = {
					globalPlugins = { vue_plugin },
				},
			},
		},
		filetypes = tsserver_filetypes,
	},
	texlab = {
		settings = {
			texlab = {
				auxDirectory = "./build",
				build = {
					executable = "latexmk",
					args = {
						"-pdf",
						"-output-directory=build",
					},
				},
			},
		},
	},
}

return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "folke/neodev.nvim", opts = {} },
		{ "yioneko/nvim-vtsls" },
		{ "williamboman/mason.nvim", opts = { ui = { border = "rounded" } } },
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("m-gail-lsp-attach", { clear = true }),
			callback = function(event)
				local map = function(keys, func, desc)
					util_nmap(keys, func, desc, { buffer = event.buf })
				end

				map("K", vim.lsp.buf.hover)
				map("<leader>rn", vim.lsp.buf.rename, "rename")
				map("gs", ":VtsExec goto_source_definition<CR>", "go to TS source definition")
				map("gD", ":lua vim.lsp.buf.declaration()<CR>", "go to declaration")
				map("gd", require("telescope.builtin").lsp_definitions, "go to definition")
				map("gI", require("telescope.builtin").lsp_implementations, "go to implementation")
				map("gr", require("telescope.builtin").lsp_references, "show references")
				map("]d", function()
					vim.diagnostic.goto_next()
				end, "")
				map("[d", function()
					vim.diagnostic.goto_prev()
				end, "")
				map("]e", function()
					vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
				end, "")
				map("[e", function()
					vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
				end, "")
				map("]w", function()
					vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })
				end, "")
				map("[w", function()
					vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })
				end, "Ne")

				map("<leader>sa", vim.lsp.buf.code_action, "code action")
				map("<leader>sd", vim.diagnostic.open_float, "show line diagnostics")
				map("<leader>sr", ":LspRestart<CR>", "restart lsp")
				map("<leader>sio", ":VtsExec organize_imports<CR>", "Organize TS imports")
				map("<leader>sir", ":VtsExec remove_unused_imports<CR>", "Remove unused TS imports")
				map("<leader>sia", ":VtsExec add_missing_imports<CR>", "Add missing imports")
				util_map({ "n", "v" }, "<leader>sf", function()
					vim.lsp.buf.format({ async = true, filter = function (client)
						return not vim.tbl_contains(disable_formatting_for, client.name)
					end })
				end, "format", { buffer = event.buf })

				local client = vim.lsp.get_client_by_id(event.data.client_id)
				if client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
					vim.lsp.inlay_hint.enable(true, { bufnr = 0 })
				end
			end,
		})

		require("mason-lspconfig").setup({
			ensure_installed = vim.tbl_keys(servers),
		})

		for server, config in pairs(servers) do
			vim.lsp.config(server, config)
		end
		vim.lsp.enable({ "vtsls", "vue_ls" })

		-- Signcolumn Icons
		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "",
					[vim.diagnostic.severity.WARN] = "",
					[vim.diagnostic.severity.INFO] = "",
					[vim.diagnostic.severity.HINT] = "",
				},
			},
		})
	end,
}
