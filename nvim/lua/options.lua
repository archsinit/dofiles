--------------------------------------------------------------------------------
-- GENERAL NEOVIM SETTINGS - options.lua - by archsinit
--------------------------------------------------------------------------------

local g = vim.g
local opt = vim.opt

--------------------------------------------------------------------------------
-- General
--------------------------------------------------------------------------------
opt.mouse = 'a'                                -- Enable mouse support
opt.clipboard = 'unnamedplus'                  -- Copy/paste to system clipboard
opt.swapfile = false                           -- Disable swapfile
opt.completeopt = 'menuone,noinsert,noselect'  -- Autocomplete options

--------------------------------------------------------------------------------
-- Neovim UI
--------------------------------------------------------------------------------
opt.number = true                              -- Show line number
opt.showmatch = true                           -- Highlight matching paranthesis
opt.colorcolumn = '81'                         -- Highlight column 81
opt.splitright = true                          -- Split vertically to the right
opt.splitbelow = true                          -- Split horizontally below
opt.ignorecase = true                          -- Ignore case when searching
opt.smartcase = true                           -- Ignore lowercase for pattern
opt.linebreak = true                           -- Wrap on boundary
opt.termguicolors = true                       -- Enable 24-bit RGB colors
opt.laststatus = 3                             -- Set global statusline

--------------------------------------------------------------------------------
-- Tabs, Indentation
--------------------------------------------------------------------------------
opt.expandtab = true                           -- Use spaces instead of tabs
opt.shiftwidth = 4                             -- Shift 4 spaces when tab
opt.tabstop = 4                                -- Set one tab as 4 spaces
opt.softtabstop = 4                            -- Spaces for auto-indent
opt.smartindent = true                         -- Auto-indent new lines

--------------------------------------------------------------------------------
-- Memory, CPU
--------------------------------------------------------------------------------
opt.hidden = true                              -- Enable background buffers
opt.history = 100                              -- Lines in history
opt.lazyredraw = true                          -- Faster scrolling
opt.synmaxcol = 240                            -- Max column for syntax
opt.updatetime = 250                           -- ms to wait before an event

--------------------------------------------------------------------------------
-- Startup
--------------------------------------------------------------------------------
-- Disable nvim intro
opt.shortmess:append "sI"

-- -- Disable builtin plugins
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
   "tutor",
   "rplugin",
   "synmenu",
   "optwin",
   "compiler",
   "bugreport",
   "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
   g["loaded_" .. plugin] = 1
end
