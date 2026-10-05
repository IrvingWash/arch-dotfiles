vim.loader.enable();
require('vim._core.ui2').enable()
vim.g.have_nerd_font = true

local opt = vim.opt

opt.breakindent = true

opt.termguicolors = true
opt.mouse         = "a"
opt.clipboard     = "unnamedplus"

opt.number         = true
opt.relativenumber = true
opt.cursorline     = true
opt.wrap           = true
opt.scrolloff      = 10
opt.sidescrolloff  = 10

opt.tabstop     = 4
opt.shiftwidth  = 4
opt.softtabstop = 4
opt.expandtab   = true
opt.smartindent = true
opt.autoindent  = true

opt.ignorecase = true
opt.smartcase  = true
opt.hlsearch   = true
opt.incsearch  = true

opt.signcolumn  = "yes"
-- opt.colorcolumn = "80"
opt.showmatch   = true
opt.cmdheight   = 1
opt.showmode    = true
opt.lazyredraw  = true
opt.fillchars   = { eob = " " }

opt.backup      = false
opt.writebackup = false
opt.swapfile    = false
opt.hidden      = true
opt.autowrite   = false
opt.autoread    = true

opt.list = true
opt.listchars = {
    space = "·",
    tab = ">-",
}

opt.splitbelow = true
opt.splitright = true

opt.errorbells = false

opt.foldlevelstart = 99
opt.showmode = false

-- local function disable_builtins()
--     local builtins = {
--         "2html_plugin",
--         "getscript",
--         "getscriptPlugin",
--         "gzip",
--         "logipat",
--         "netrw",
--         "netrwPlugin",
--         "netrwSettings",
--         "netrwFileHandlers",
--         "matchit",
--         "tar",
--         "tarPlugin",
--         "rrhelper",
--         "spellfile_plugin",
--         "vimball",
--         "vimballPlugin",
--         "zip",
--         "zipPlugin",
--         "tutor",
--         "rplugin",
--         "synmenu",
--         "optwin",
--         "compiler",
--         "bugreport",
--         "ftplugin",
--     }
--
--     for _, plugin in pairs(builtins) do
--         vim.g["loaded_" .. plugin] = 1
--     end
-- end
-- disable_builtins()
