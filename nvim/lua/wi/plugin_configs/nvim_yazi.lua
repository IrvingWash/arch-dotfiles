local yazi = require("yazi")

yazi.setup({
    keys = {
        "<leader>nb",
        mode = { "n", "v" },
        "<cmd>Yazi<cr>",
    },
    open_for_directories = false,
})

vim.keymap.set("n", "<leader>nb", "<cmd>Yazi<CR>")
