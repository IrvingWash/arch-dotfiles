require('textcase').setup({})

vim.keymap.set(
    { "n", "v" },
    "<leader>ada",
    function()
        require("textcase").current_word("to_ada_case")
     end,
    { desc = "Convert to ada case" }
)

vim.keymap.set(
    { "n", "v" },
    "<leader>sn",
    function()
        require("textcase").current_word("to_snake_case")
     end,
    { desc = "Convert to snake case" }
)

vim.keymap.set(
    { "n", "v" },
    "<leader>sca",
    function()
        require("textcase").current_word("to_camel_case")
     end,
    { desc = "Convert to camel case" }
)
