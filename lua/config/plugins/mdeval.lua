return {
	"https://github.com/jubnzv/mdeval.nvim",
	config = function ()
		require 'mdeval'.setup({
			require_confirmation = false, 
			eval_options = {
				rust = {
					command = { "rustc" },
					language_code = "rust",
					exec_type = "compiled",
					extensios = "rs",
				},
			},
		})
	end,
}
