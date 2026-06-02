local packages = {
    "https://github.com/mikavilpas/yazi.nvim",
    "https://github.com/ibhagwan/fzf-lua",
    "https://github.com/nvim-mini/mini.cursorword",
    "https://github.com/nvim-mini/mini.surround",
    "https://github.com/nvim-mini/mini.align",
    "https://github.com/lewis6991/gitsigns.nvim",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/rluba/jai.vim",
    "https://github.com/saghen/blink.cmp",
    "https://github.com/esmuellert/codediff.nvim",
    "https://github.com/NeogitOrg/neogit",
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
    },
    -- Themes
    "https://github.com/ficd0/ashen.nvim",
    { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
    "https://github.com/dgrco/deepwater.nvim",
    -- Dependencies which are not used directly
    "https://github.com/m00qek/baleia.nvim", -- for neogit
    "https://github.com/saghen/blink.lib", -- for blink.cmp
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
}

vim.pack.add(packages)

-- vim.pack.update()
vim.api.nvim_create_user_command(
    "PackUpdate",
    function()
        vim.pack.update()
    end,
    { desc = "Update all plugins" }
)
