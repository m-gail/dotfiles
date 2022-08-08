local M = {}

function M.table_keys(table)
    local keyset = {}
    for k, _ in pairs(table) do
        keyset[#keyset + 1] = k
    end
    return keyset
end

return M
