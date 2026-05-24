require("yazi").setup({
    open_for_directories = false
})

vim.keymap.set({ "n", "v" }, "<leader>e", "<cmd>Yazi<cr>", { desc = "Open Yazi file explorer" })
