local packages = {
    "https://github.com/rluba/jai.vim",
    "https://github.com/mikavilpas/yazi.nvim",
    "https://github.com/ibhagwan/fzf-lua",
    "https://github.com/nvim-mini/mini.cursorword",
    "https://github.com/nvim-mini/mini.surround",
    "https://github.com/nvim-mini/mini.align",
    "https://github.com/nvim-mini/mini.splitjoin",
    "https://github.com/lewis6991/gitsigns.nvim",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/esmuellert/codediff.nvim",
    "https://github.com/NeogitOrg/neogit",
    "https://github.com/IrvingWash/text-case.nvim",
    "https://github.com/stevearc/oil.nvim",
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
    },
    "https://github.com/IrvingWash/nvim-treesitter-context.git",

    -- Themes
    "https://github.com/metalelf0/black-metal-theme-neovim.git",
    "https://github.com/folke/tokyonight.nvim",
    "https://github.com/ficd0/ashen.nvim",
    "https://github.com/shaunsingh/nord.nvim",
    { src = "https://github.com/rose-pine/neovim", name = "rose-pine"  },
    { src = "https://github.com/catppuccin/nvim",  name = "catppuccin" },
    "https://github.com/RostislavArts/naysayer.nvim",
    "https://github.com/dgrco/deepwater.nvim",
    "https://codeberg.org/dapo/carbon-nvim.git",
    "https://github.com/e-ink-colorscheme/e-ink.nvim",
     'https://github.com/mcncl/alabaster.nvim',

    -- Dependencies which are not used directly
    "https://github.com/m00qek/baleia.nvim", -- for neogit
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
}

vim.pack.add(packages)

vim.cmd.packadd("nvim.undotree")
vim.cmd.packadd("nvim.difftool")

vim.api.nvim_create_user_command(
    "PackUpdate",
    function()
        vim.pack.update()
    end,
    { desc = "Update all plugins" }
)
