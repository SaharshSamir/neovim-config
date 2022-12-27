local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

	Plug('nvim-lua/plenary.nvim')
	Plug('nvim-telescope/telescope.nvim', {tag = '0.1.0'})

vim.call('plug#end')
