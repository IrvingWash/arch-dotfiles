local cmp = require('blink.cmp')
cmp.build():wait(60000)
cmp.setup({
    signature = { enabled = true },
    completion = {
        documentation = { auto_show = false },
        trigger = {
            show_on_keyword = false,
        },
        menu = {
            auto_show = false,
        },
    },
})
