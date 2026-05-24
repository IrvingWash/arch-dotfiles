vim.pack.add({
    "https://github.com/mikavilpas/yazi.nvim",
    "https://github.com/ibhagwan/fzf-lua",
    "https://github.com/nvim-mini/mini.cursorword",
    "https://github.com/nvim-mini/mini.surround",
    "https://github.com/nvim-mini/mini.align",
    "https://github.com/lewis6991/gitsigns.nvim",
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
    },
    -- Dependencies which are not used directly
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
})
