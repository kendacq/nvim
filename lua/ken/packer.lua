return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'rstacruz/vim-closer'

	use 'neovim/nvim-lspconfig'
	use 'mason-org/mason.nvim'
	use 'mason-org/mason-lspconfig.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = 'v0.1.9',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('mbbill/undotree')
	use('tpope/vim-fugitive')

	use('nvim-tree/nvim-tree.lua')
	use('nvim-tree/nvim-web-devicons') 

	use({
		'thedenisnikulin/vim-cyberpunk',
		as = 'silverhand',
		config = function()
			vim.cmd('colorscheme silverhand')
		end
	})

	use('ThePrimeagen/vim-be-good')
end)
