vim.keymap.set({ "n", "v" }, "<leader>cd", "<cmd>CodeDiff<cr>", { desc = "View code diff" })
vim.keymap.set({ "n", "v" }, "<leader>pcd", "<cmd>CodeDiff master...<cr>", { desc = "View code diff PR-like" })

require("codediff").setup({
    explorer = {
        position = "left",
    }
})
