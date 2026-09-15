-- Filetype
vim.filetype.add({
  extension = { jai = 'jai' },
})

-- LSP
vim.lsp.config("jails", {
    cmd = { "jails", "-jai_path", vim.fn.expand("~/Apps/jai"), "-jai_exe_name", "jai" },
    filetypes = { "jai" },
    root_markers = { ".git", "build.jai", "jails.json" },
})

-- Compiler
vim.api.nvim_create_autocmd("FileType", {
    pattern = "jai",
    callback = function()
        vim.o.makeprg = "jai -no_color -quiet"
        vim.bo.errorformat = [[%f:%l\,%c: Error: %m]]
    end,
})
