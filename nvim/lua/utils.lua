--------------------------------------------------------------------------------
-- COMMONLY USED FUNCTIONS - utils.lua - by archsinit
--------------------------------------------------------------------------------

local fn = vim.fn
local M = {}

-- Return nvim version
function M.get_nvim_version()
    local actual_ver = vim.version()

    local nvim_ver_str = string.format("%d.%d.%d", actual_ver.major, actual_ver.minor, actual_ver.patch)
    return nvim_ver_str
end

return M
