--------------------------------------------------------------------------------
-- KEYMAPPING - mappings.lua - by archsinit
--------------------------------------------------------------------------------

local keymap = vim.keymap

-- Set global mapleader
vim.g.mapleader = " "

--------------------------------------------------------------------------------
-- Neovim Mapping
--------------------------------------------------------------------------------

-- Escape from insert mode
keymap.set("i", "jk", "<ESC>")

-- Clear search highlighting with <leader> and c
keymap.set('n', "<leader>c", ":nohl<CR>")

-- Save current buffer
keymap.set("n", "<leader>w", "<cmd>update<cr>", { silent = true, desc = "save buffer" })

-- Quit current buffer
keymap.set("n", "<leader>q", "<cmd>x<cr>", { silent = true, desc = "quit current window" })

-- Edit and reload nvim config file quickly
keymap.set("n", "<leader>ev", "<cmd>tabnew ~/.config/nvim/lua/mappings.lua <bar> tcd %:h<cr>", {
  silent = true,
  desc = "open init.lua",
})

keymap.set("n", "<leader>sv", function()
  vim.cmd([[
      update $MYVIMRC
      source $MYVIMRC
    ]])
  vim.notify("Nvim config successfully reloaded!", vim.log.levels.INFO, { title = "nvim-config" })
end, {
  silent = true,
  desc = "reload init.lua",
})

-- Always use very magic mode for searching
keymap.set("n", "/", [[/\v]])

-- Restructure remainder of paragraph to fit into 80 characters
keymap.set("n", "<leader>g", "gq}")

-- Center the page 
keymap.set("n", "<leader><leader>", "zz")

-- Enter date stamp
keymap.set("i", "@@", '<c-r>=strftime("%Y-%m-%d")<cr>', 
    { silent = true, desc = "enter date" })

-- Switch to next tab
keymap.set("n", "<leader>]", "gt")
keymap.set("n", "<leader>[", "gT")

--------------------------------------------------------------------------------
-- Ledger File
--------------------------------------------------------------------------------
keymap.set("n", "<leader>la", "<cmd>LedgerAlign<cr>", 
    { silent = true, desc = "align line" })

keymap.set("n", "<leader>lb", "<cmd>Ledger bal -C ^Asset ^Liab<cr>", 
    { silent = true, desc = "balance sheet" })

keymap.set("n", "<leader>lp", '<cmd>Ledger bal -b "last month" -CV ^Exp<cr>',
    { silent = true, desc = "p&l last month" })
