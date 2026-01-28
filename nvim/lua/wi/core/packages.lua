-- boostrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        lazyrepo,
        lazypath,
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- plugins
local mason = {
    "mason-org/mason.nvim",
    opts = {},
}

local yazi = {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = {
        { "nvim-lua/plenary.nvim", lazy = true },
    },
}

local catppuccin = {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
}

local nvim_treesitter = {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
}

local nvim_lspconfig = {
    "neovim/nvim-lspconfig",
}

local nvim_cmp = {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
    },
}

local conform = {
    "stevearc/conform.nvim",
    opts = {},
}

local nvim_telescope = {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },
}

local git_signs = "lewis6991/gitsigns.nvim"

local vim_illuminate = "RRethy/vim-illuminate"

local diffview = "sindrets/diffview.nvim"

local nvim_colorizer = "norcalli/nvim-colorizer.lua"

local telescope_live_grep_args = {
    "nvim-telescope/telescope-live-grep-args.nvim",
    lazy = true,
}

local vim_easy_align = "junegunn/vim-easy-align"

local nvim_web_dev_icons = { "nvim-tree/nvim-web-devicons", opts = {} }

require("lazy").setup({
    checker = { enabled = false },
    spec = {
        mason,
        yazi,
        catppuccin,
        nvim_treesitter,
        nvim_lspconfig,
        nvim_cmp,
        conform,
        nvim_telescope,
        git_signs,
        vim_illuminate,
        diffview,
        nvim_colorizer,
        telescope_live_grep_args,
        vim_easy_align,
        nvim_web_dev_icons,
    },
})
