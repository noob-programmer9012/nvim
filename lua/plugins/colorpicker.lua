return {
	"uga-rosa/ccc.nvim",
	config = function()
		-- Enable true color
		vim.opt.termguicolors = true

		local ccc = require("ccc")
		local mapping = ccc.mapping

		ccc.setup({
			-- Your preferred settings
			-- Example: enable highlighter
			highlighter = {
				auto_enable = true,
				lsp = true,
			},
		})

		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<C-p>", ":CccPick<CR>", opts)
	end,
}

-- return {
--   "ziontee113/color-picker.nvim",
--
--   config = function()
--     local opts = { noremap = true, silent = true }
--
--     require("color-picker").setup({ -- for changing icons & mappings
--       -- ["icons"] = { "ﱢ", "" },
--       -- ["icons"] = { "ﮊ", "" },
--       -- ["icons"] = { "", "ﰕ" },
--       -- ["icons"] = { "", "" },
--       -- ["icons"] = { "", "" },
--       ["icons"] = { "ﱢ", "" },
--       ["border"] = "rounded", -- none | single | double | rounded | solid | shadow
--       ["keymap"] = {       -- mapping example:
--         ["U"] = "<Plug>ColorPickerSlider5Decrease",
--         ["O"] = "<Plug>ColorPickerSlider5Increase",
--       },
--       ["background_highlight_group"] = "Normal", -- default
--       ["border_highlight_group"] = "FloatBorder", -- default
--       ["text_highlight_group"] = "Normal",     --default
--     })
--
--     vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
--     vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)
--   end,
--   dependencies = {
--
--     "brenoprata10/nvim-highlight-colors",
--     config = function()
--       -- Ensure termguicolors is enabled if not already
--       vim.opt.termguicolors = true
--
--       require("nvim-highlight-colors").setup({})
--     end,
--   },
-- }
