vim.opt.termguicolors = true;

require("bufferline").setup({
	options = {
		offsets = {
			{ filetype = "NvimTree", text = "", padding = 1 },
			{ filetype = "neo-tree", text = "", padding = 1 },
			{ filetype = "Outline", text = "", padding = 1 },
		},
		max_name_length = 14,
		max_prefix_length = 13,
		tab_size = 20,
		separator_style = "thin",
		show_buffer_close_icons = false,
	},
});
