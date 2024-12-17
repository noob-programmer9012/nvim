return {
	{
		"anuvyklack/pretty-fold.nvim",
		config = function()
			require("pretty-fold").setup()
		end,
	},
	{
		"anuvyklack/fold-preview.nvim",
		requires = "anuvyklack/keymap-amend.nvim",
		config = function()
			require("fold-preview").setup({
				-- Your configuration goes here.
			})
		end,
	},
}
