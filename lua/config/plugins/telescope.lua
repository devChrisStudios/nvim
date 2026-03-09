
return {
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			{ 'nvim-lua/plenary.nvim' },
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		},
		config = function()
			require('telescope').setup({
				defaults = {
					layout_strategy = 'flex',
					preview_cutoff = 0,
				},
			})
		end,
	}
}
