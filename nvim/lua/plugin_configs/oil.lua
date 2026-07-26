require("oil").setup({
    columns = {
        "icon",
        "permissions",
    },
    view_options = {
        show_hidden = true,
    },
})

vim.keymap.set({ "n", "v" }, "<leader>e", "<cmd>Oil<cr>", { desc = "Open file explorer" })
