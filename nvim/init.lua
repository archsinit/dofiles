--------------------------------------------------------------------------------
-- NEOVIM CONFIGURATION FILE - init.lua - by archsinit
--------------------------------------------------------------------------------

local api = vim.api
local utils = require("utils")

-- Verify that the latest stable version of nvim is being used
local expected_ver = "0.8.1"
local nvim_ver = utils.get_nvim_version()

if nvim_ver ~= expected_ver then
    local msg = string.format(
        "Unsupported nvim version: expect %s, but got %s instead!", 
        expected_ver, nvim_ver)
    api.nvim_err_writeln(msg)
    return
end

-- List configuration files to source
local conf_files = {
    "options.lua", -- general neovim settings
    "plugins.lua", -- packer.nvim, package manager
    "mappings.lua", -- user keymapping
}

-- Source configuration files
for _, name in ipairs(conf_files) do 
    local path = string.format("%s/lua/%s", vim.fn.stdpath("config"), name)
    local source_cmd = "source " .. path
    vim.cmd(source_cmd)
end
