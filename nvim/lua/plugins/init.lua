local status, packer = pcall(require, 'packer');

if (not status) then
	print('Packer is not installed')
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(
	function(use)
		use 'wbthomason/packer.nvim'

		-- Color scheme
		use 'drewtempelmeyer/palenight.vim';

		-- Fuzzy finder
		use {
			'nvim-telescope/telescope.nvim', tag = '0.1.0',
			requires = { {'nvim-lua/plenary.nvim'} }
		}

		-- File explorer
		use {
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v2.x",
			requires = { 
				"nvim-lua/plenary.nvim",
				"nvim-tree/nvim-web-devicons",
				"MunifTanjim/nui.nvim",
			}
		}

		-- Status line
		use {
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true }
		}
	end
);
