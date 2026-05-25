vim.pack.add({
    "https://github.com/mikavilpas/yazi.nvim",
    "https://github.com/ibhagwan/fzf-lua",
    "https://github.com/nvim-mini/mini.cursorword",
    "https://github.com/nvim-mini/mini.surround",
    "https://github.com/nvim-mini/mini.align",
    "https://github.com/lewis6991/gitsigns.nvim",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/rluba/jai.vim",
    "https://github.com/saghen/blink.lib",
    "https://github.com/esmuellert/codediff.nvim",
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
    },
    -- Themes
    "https://github.com/ficd0/ashen.nvim",
   { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
    -- Dependencies which are not used directly
    "https://github.com/saghen/blink.cmp",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
})
