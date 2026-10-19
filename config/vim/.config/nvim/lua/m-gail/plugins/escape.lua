local map = require("m-gail.util.map").map

return {
    "m-gail/escape.nvim",
    init = function ()
        map({"n", "v"}, "<leader>ee", require("escape").escape)
        map({"n", "v"}, "<leader>eu", require("escape").encode_uri_component)
    end
}
