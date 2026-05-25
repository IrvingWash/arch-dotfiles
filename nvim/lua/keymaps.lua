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
