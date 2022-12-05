local options = {
	backup = false,
	clipboard = 'unnamed',
	smarttab = true,
	tabstop = 2,
	shiftwidth = 2,
	hlsearch = true,
	ignorecase = true,
	scrolloff = 20,
	wrap = false,
	number = true,
	mouse = 'a',
	autoindent = true,
	wrapscan = true,
	swapfile = false,
	showmatch = true,
	numberwidth = 2,
	list = true,
	listchars = 'trail:·,tab:->,nbsp:+',
	background = 'dark',
	cmdheight = 0,
	completeopt = { 'menuone', 'noselect' },
	pumheight = 10,
	showtabline = 2,
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	termguicolors = true,
	cursorline = true,
}

for optionName, value in pairs(options) do
	vim.opt[optionName] = value
end
