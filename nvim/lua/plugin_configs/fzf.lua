vim.keymap.set(
    { "n", "v" },
    "<leader>faf",
    function()
        require("fzf-lua").files()
    end,
    { desc = "Find project files" }
)

vim.keymap.set(
    { "n", "v" },
    "<leader>ff",
    function()
        require("fzf-lua").git_files()
    end,
    { desc = "Find git files" }
)

vim.keymap.set(
    { "n", "v" },
    "<leader>fdf",
    function()
        local dir = vim.fn.input("Find files in dir: ", "", "dir")
        if dir ~= "" then
            require("fzf-lua").files({ cwd = dir })
        end
    end,
    { desc = "Find files in folder" }
)

vim.keymap.set(
    { "n", "v" },
    "<leader>fg",
    function()
        require("fzf-lua").live_grep()
    end,
    { desc = "Grep project" }
)

vim.keymap.set(
    { "n", "v" },
    "<leader>fdg",
    function()
        local dir = vim.fn.input("Grep files in dir: ", "", "dir")
        require("fzf-lua").live_grep({ cwd = dir })
    end,
    { desc = "Grep project" }
)

vim.keymap.set(
    { "n", "v" },
    "<leader>frg",
    function()
        require("fzf-lua").live_grep_resume()
    end,
    { desc = "Resume grep project" }
)

vim.keymap.set(
    { "n", "v" },
    "<leader>fb",
    function()
        require("fzf-lua").buffers()
    end,
    { desc = "List buffers" }
)
