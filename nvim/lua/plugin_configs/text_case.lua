require('textcase').setup({})

vim.keymap.set(
    { "n", "v" },
    "<leader>ada",
    function()
        require("textcase").current_word("to_ada_case")
     end,
    { desc = "Open Yazi file explorer" }
)

vim.keymap.set(
    { "n", "v" },
    "<leader>sn",
    function()
        require("textcase").current_word("to_snake_case")
     end,
    { desc = "Open Yazi file explorer" }
)
