return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local colors = {
			color_fg0 = "#fbf1c7",
			color_bg1 = "#3c3836",
			color_bg3 = "#665c54",
			color_blue = "#458588",
			color_aqua = "#4db366",
			color_green = "#98971a",
			color_orange = "#d65d0e",
			color_purple = "#b16286",
			color_red = "#cc241d",
			color_yellow = "#d79921",
		}

		local bubbles_theme = {
			normal = {
				a = { fg = colors.color_fg0, bg = colors.color_orange },
				b = { fg = colors.color_fg0, bg = colors.color_yellow },
				c = { fg = colors.color_fg0, bg = colors.color_bg1 },
			},

			insert = { a = { fg = colors.color_fg0, bg = colors.color_blue } },
			visual = { a = { fg = colors.color_fg0, bg = colors.color_aqua } },
			replace = { a = { fg = colors.color_fg0, bg = colors.color_green } },

			inactive = {
				a = { fg = colors.color_red, bg = colors.color_bg1 },
				b = { fg = colors.color_red, bg = colors.color_bg1 },
				c = { fg = colors.color_red },
			},
		}

		require("lualine").setup({
			options = {
				theme = bubbles_theme,
				disabled_filetypes = { "NvimTree" },
				section_separators = { left = "", right = "" },
				-- component_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
				-- component_separators = "",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					"branch",
					{
						"diff",
						colored = true, -- Displays a colored diff status if set to true
						diff_color = {
							-- Same color values as the general color option can be used here.
							added = "LuaLineDiffAdd",
							modified = { fg = "#fbf1c7" },
							removed = { fg = "#cc241d" },
						},
						symbols = { added = "+", modified = "~", removed = "-" }, -- Changes the symbols used by the diff.
						source = nil, -- A function that works as a data source for diff.
						-- It must return a table as such:
						--   { added = add_count, modified = modified_count, removed = removed_count }
						-- or nil on failure. count <= 0 won't be displayed.
					},
					"diagnostics",
				},
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
