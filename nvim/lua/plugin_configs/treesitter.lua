require("nvim-treesitter").setup()


-- zc - zo
vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
        vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo[0][0].foldmethod = 'expr'

        pcall(vim.treesitter.start)
    end,
})
