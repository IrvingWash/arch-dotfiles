local cmp = require('blink.cmp')
cmp.build():wait(60000)
cmp.setup({
    signature = { enabled = true },
    completion = {
        documentation = { auto_show = true },
        trigger = {
            show_on_keyword = true,
        },
        menu = {
            auto_show = true,
        },
    },
})
