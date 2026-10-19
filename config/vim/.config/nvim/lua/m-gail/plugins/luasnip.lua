local map = require("m-gail.util.map").map

return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	dependencies = { "rafamadriz/friendly-snippets" },
	build = "make install_jsregexp",
	init = function()
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local d = ls.dynamic_node
		local sn = ls.snippet_node

		ls.config.set_config({
			history = false,
			updateevents = "TextChanged,TextChangedI",
			region_check_events = "InsertEnter",
			delete_check_events = "InsertLeave",
		})

		local function jump_back()
			if ls.jumpable(-1) then
				ls.jump(-1)
			end
		end

		local function jump_forward()
			ls.jump(1)
		end

		map({ "i", "s" }, "<A-n>", jump_forward)
		map({ "i", "s" }, "<A-p>", jump_back)

		ls.add_snippets("typescriptreact", {
			s("us", {
				t("const ["),
				i(1, "stateName"),
				t(", "),
				d(2, function(args)
					local result = (string.gsub((args[1][1] or ""), "^%l", string.upper))
					return sn(nil, {
						t("set" .. result),
					})
				end, { 1 }),
				t("] = useState("),
				i(3, "default"),
				t(");"),
			}),
			ls.parser.parse_snippet("uc", "const ${1:callback} = useCallback((${2:}) => {\n    ${3:}\n}, [${4:}]);"),
			ls.parser.parse_snippet("ue", "useEffect(() => {\n    ${1:}\n}, [${2:}]);"),
			ls.parser.parse_snippet(
				"efc",
				"export interface ${1:Component}Props {\n}\n\nexport function ${1:}({}: ${1:}Props): ReactElement {\n    return (\n        ${2:}\n    );\n}"
			),
			ls.parser.parse_snippet(
				"fc",
				"interface ${1:Component}Props {\n}\n\nfunction ${1:}({}: ${1:}Props): ReactElement {\n    return (\n        ${2:}\n    );\n}"
			),
			ls.parser.parse_snippet(
				"sfc",
				"function ${1:}(${2:}): ReactElement {\n    return (\n        ${3:}\n    );\n}"
			),
		})
	end,
}
