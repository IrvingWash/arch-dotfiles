local M = {}

local function find_compile_buf()
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if
            vim.api.nvim_buf_is_loaded(buf)
            and vim.api.nvim_buf_get_name(buf) == "*compile*"
        then
            return buf
        end
    end
end

function M.compile()
    local cmd = vim.fn.input({
        prompt = "Compile command: ",
        completion = "shellcmdline",
        history = "cmdline",
    })
    if cmd == "" then
        return
    end

    local buf = find_compile_buf()

    if buf then
        -- Buffer exists, switch to it
        vim.api.nvim_set_current_buf(buf)

        -- Stop previous job if still running
        if vim.b.terminal_job_id then
            vim.fn.jobstop(vim.b.terminal_job_id)
        end

        -- Clear the buffer content
        vim.api.nvim_buf_set_lines(buf, 0, -1, false, {})
    else
        -- Create new buffer in current window
        buf = vim.api.nvim_create_buf(false, true)
        vim.api.nvim_set_current_buf(buf)
        vim.api.nvim_buf_set_name(buf, "*compile*")
        vim.bo.bufhidden = "hide"
        vim.bo.swapfile = false
        vim.bo.filetype = "compile"
    end

    -- Start terminal job
    vim.fn.termopen(cmd, {
        on_exit = function()
            vim.schedule(function()
                if vim.api.nvim_get_current_buf() == buf then
                    vim.cmd("stopinsert")
                end
            end)
        end,
    })

    -- UX
    vim.cmd("startinsert")
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.signcolumn = "no"
end

return M
