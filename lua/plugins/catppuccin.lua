return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato", -- latte, frappe, macchiato, mocha
			term_colors = true,
			transparent_background = false,
			no_italic = false,
			no_bold = false,
			-- styles = {
			-- 	comments = {},
			-- 	conditionals = {},
			-- 	loops = {},
			-- 	functions = {},
			-- 	keywords = {},
			-- 	strings = {},
			-- 	variables = {},
			-- 	numbers = {},
			-- 	booleans = {},
			-- 	properties = {},
			-- 	types = {},
			-- },
			-- color_overrides = {
			-- 	mocha = {
			-- 		base = "#282C34",
			-- 		mantle = "#24282F",
			-- 		crust = "#000000",
			-- 		surface0 = "#414559",
			-- 		surface1 = "#7C7F93",
			-- 	},
			-- },
			-- highlight_overrides = {
			-- 	mocha = function(C)
			-- 		return {
			-- 			TabLineSel = { bg = "#282C34" },
			-- 			CmpBorder = { fg = "#212830" },
			-- 			Pmenu = { bg = "#000000" },
			-- 			TelescopeBorder = { link = "FloatBorder" },
			-- 		}
			-- 	end,
			-- },
		})
		-- vim.cmd.colorscheme("catppuccin")
	end,
}
