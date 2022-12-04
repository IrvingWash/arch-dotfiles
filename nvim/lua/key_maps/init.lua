-- Configuration
local options = { noremap = true, silent = true };

local modes = {
	normal = 'n',
	insert = 'i',
	visual = 'v',
	visual_block = 'x',
	terminal = 't',
	command = 'c',
}

local map = vim.api.nvim_set_keymap;

-- Remap leader
map('', '<Space>', '<Nop>', options);
vim.g.mapleader = ' ';
vim.g.maplocalleader = ' ';

-- Pane navigation
map(modes.normal, '<C-h>', '<C-w>h', options);
map(modes.normal, '<C-j>', '<C-w>j', options);
map(modes.normal, '<C-k>', '<C-w>k', options);
map(modes.normal, '<C-l>', '<C-w>l', options);

-- Resize
map(modes.normal, '<A-Up>', ':resize +2<CR>', options);
map(modes.normal, '<A-Down>', ':resize -2<CR>', options);
map(modes.normal, '<A-Left>', ':vertical resize -2<CR>', options);
map(modes.normal, '<A-Right>', ':vertical resize +2<CR>', options);

-- Stay in indent mode
map(modes.visual, '<', '<gv', options);
map(modes.visual, '>', '>gv', options);

-- Line sorting
map(modes.visual, '<A-j>', ':m .+1<CR>==', options);
map(modes.visual, '<A-k>', ':m .-2<CR>==', options);
map(modes.visual, 'p', '"_dP', options);
map(modes.visual_block, 'J', ':move \'>+1<CR>gv-gv', options);
map(modes.visual_block, 'K', ':move \'<-2<CR>gv-gv', options);
map(modes.visual_block, '<A-j>', ':move \'>+1<CR>gv-gv', options);
map(modes.visual_block, '<A-k>', ':move \'<-2<CR>gv-gv', options);

-- Telescope
map(modes.normal, '<Leader>ff', '<Cmd>Telescope find_files<cr>', options);
map(modes.normal, '<Leader>fg', '<cmd>Telescope live_grep<cr>', options);

-- Neotree
map(modes.normal, '<Tab>', '<Cmd>Neotree toggle<cr>', options);
map(modes.normal, '<Leader>f', '<Cmd>Neotree focus<cr>', options);
