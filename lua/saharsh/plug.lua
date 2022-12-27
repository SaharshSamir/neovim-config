local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

	Plug('nvim-lua/plenary.nvim')
	Plug('nvim-telescope/telescope.nvim', {tag = '0.1.0'})
	Plug('folke/tokyonight.nvim', { branch = 'main' })
	Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

	--LSP Support
	Plug('neovim/nvim-lspconfig')
	Plug('williamboman/mason.nvim')
	Plug('williamboman/mason-lspconfig.nvim')

	--Autocompletion
	Plug('hrsh7th/nvim-cmp')
	Plug('hrsh7th/cmp-buffer')
	Plug('hrsh7th/cmp-path')
	Plug('saadparwaiz1/cmp_luasnip')
	Plug('hrsh7th/cmp-nvim-lsp')
	Plug('hrsh7th/cmp-nvim-lua')

	--Snippetsjhhh
	Plug('L3MON4D3/LuaSnip')
	Plug('rafamadriz/friendly-snippets')

	Plug('VonHeikemen/lsp-zero.nvim')

	Plug('ray-x/lsp_signature.nvim')
	Plug('kyazdani42/nvim-web-devicons')
	--Plug('onsails/lspkind-nvim')
	Plug("ellisonleao/gruvbox.nvim")
	

vim.call('plug#end')
