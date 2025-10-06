local nmap = require("m-gail.util.map").nmap

return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    init = function ()
        local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers").new({}, {
                prompt_title = "Harpoon",
                finder = require("telescope.finders").new_table({
                    results = file_paths,
                }),
                previewer = conf.file_previewer({}),
                sorter = conf.generic_sorter({}),
            }):find()
        end

        local harpoon = require("harpoon")
        harpoon:setup()
        nmap("<leader>hm", function () harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        nmap("<leader>H", function () toggle_telescope(harpoon:list()) end)
        nmap("<leader>ha", function () harpoon:list():add() end)
        nmap("<leader>hc", function () harpoon:list():clear() end)
        nmap("<leader>j", function () harpoon:list():select(1) end)
        nmap("<leader>k", function () harpoon:list():select(2) end)
        nmap("<leader>l", function () harpoon:list():select(3) end)
        nmap("<leader>;", function () harpoon:list():select(4) end)
        nmap("<leader>J", function () harpoon:list():select(5) end)
        nmap("<leader>K", function () harpoon:list():select(6) end)
        nmap("<leader>L", function () harpoon:list():select(7) end)
        nmap("<leader>:", function () harpoon:list():select(8) end)
    end
}
