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

-- Treesitter
vim.api.nvim_create_autocmd("User", {
  pattern = "TSUpdate",
  callback = function()
    require("nvim-treesitter.parsers").jai = {
      install_info = {
        url = "https://github.com/SogoCZE/tree-sitter-jai",
        queries = "queries",
      },
    }
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "jai",
  callback = function()
    vim.treesitter.start()
  end,
})
