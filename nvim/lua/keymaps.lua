-- Plugin independent keymaps

vim.g.mapleader     = " "
vim.g.maplocalleader = " "

local set_keymap = vim.keymap.set

set_keymap("n", "<leader>sc", "<cmd>nohlsearch<cr>", { desc = "Clear search highlights" })

set_keymap("n", "<leader>bn", "<cmd>bnext<cr>",     { desc = "Next buffer" })
set_keymap("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Previous buffer" })

set_keymap("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Create vertical split" })
set_keymap("n", "<leader>sh", "<cmd>split<cr>",  { desc = "Create horizontaldsplit" })

set_keymap({ "n", "v" }, "<C-s><Up>",    "<cmd>resize +5<cr>",          { desc = "Increase window height" })
set_keymap({ "n", "v" }, "<C-s><Down>",  "<cmd>resize -5<cr>",          { desc = "Decrease window height" })
set_keymap({ "n", "v" }, "<C-s><Right>", "<cmd>vertical resize +5<cr>", { desc = "Increase window width" })
set_keymap({ "n", "v" }, "<C-s><Left>",  "<cmd>vertical resize -5<cr>", { desc = "Decrease window width" })

set_keymap("v", ">", ">gv", { desc = "Indent right and reselect" })
set_keymap("v", "<", "<gv", { desc = "Indent left and reselect" })

set_keymap({ "n", "v" }, "<C-g>", "1<C-g>", { desc = "Show absolute file path"})

set_keymap({ "n", "v" }, "<leader>cc", ":split | term ", { desc = "Run command" })

set_keymap("n", "<leader>n", "<cmd>cnext<cr>", { desc = "Go to next quick fix list item" })
set_keymap("n", "<leader>p", "<cmd>cnext<cr>", { desc = "Go to previous quick fix list item" })

set_keymap("n", "<leader>t", "<cmd>tabnew<cr><cmd>term<cr>", { desc = "Open terminal in new tab" })

vim.api.nvim_create_autocmd("TermOpen", {
    callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set(
            "n",
            "<leader>q",
            "<cmd>bd!<cr>",
            vim.tbl_extend("force", opts, { desc = "Delete terminal buffer" })
        )
    end,
})

vim.api.nvim_create_autocmd("TermOpen", {
    callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set(
            "n",
            "<leader>cc",
            "<cmd>bd!<cr>:split | term ",
            vim.tbl_extend("force", opts, { desc = "Close terminal and run command" })
        )
    end,
})
