vim.opt.completeopt = "menuone,noinsert,noselect,popup,fuzzy"

vim.keymap.set("n", "<leader>x",  vim.diagnostic.open_float,                                 { desc = "Show diagnostics" })
vim.keymap.set("n", "<leader>nx", function() vim.diagnostic.jump({ count = 1 }) end,         { desc = "Jump to next diagnostics" })
vim.keymap.set("n", "gd",         vim.lsp.buf.definition,                                    { desc = "Go to definition" })
vim.keymap.set("n", "gsd",        function() vim.cmd.vsplit(); vim.lsp.buf.definition() end, { desc = "Go to definition in a split"} )
vim.keymap.set("n", "gh",         vim.lsp.buf.hover,                                         { desc = "Toggle hover" })
vim.keymap.set("n", "<leader>rr", vim.lsp.buf.rename,                                        { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>fx", vim.lsp.buf.code_action,                                   { desc = "Toggle code actions" })
vim.keymap.set('i', '<C-k>',      vim.lsp.buf.signature_help,                                { desc = 'Signature help' })

vim.lsp.enable({
    "jails",
    "clangd",
    "lua_ls",
    "slangd",
    "rust_analyzer",
    "zls",
    "tinymist",
    "glsl_analyzer",
    "ts_ls",
})
