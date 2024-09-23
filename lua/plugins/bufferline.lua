return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				separator_style = "slant",
				diagnostics = "nvim_lsp",
				-- modified_icon = "+",
				diagnostics_update_on_event = true, -- use nvim's diagnostic handler
				-- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					return "(" .. count .. ")"
				end,

				offsets = {
					{
						filetype = "NvimTree",
						text = function()
							return vim.fn.getcwd()
						end,
						highlight = "Directory",
						separator = true, -- use a "true" to enable the default, or set your own character
					},
				},
			},
		})
		vim.keymap.set("n", "<leader>be", ":BufferLinePickClose<CR>", { silent = true })
		vim.keymap.set("n", "<leader>bj", ":BufferLinePick<CR>", { silent = true })
		vim.keymap.set("n", "<leader>ba", ":BufferLineCloseOthers<CR>", { silent = true })
		vim.keymap.set("n", "<leader>bh", ":BufferLineCloseLeft<CR>", { silent = true })
		vim.keymap.set("n", "<leader>bl", ":BufferLineCloseRight<CR>", { silent = true })
		vim.keymap.set("n", "<leader>bb", ":BufferLineCyclePrev<CR>", { silent = true })
		vim.keymap.set("n", "<leader>bn", ":BufferLineCycleNext<CR>", { silent = true })
		vim.keymap.set("n", "<leader>1", ":BufferLineGoToBuffer1<CR>", { silent = true })
		vim.keymap.set("n", "<leader>2", ":BufferLineGoToBuffer2<CR>", { silent = true })
		vim.keymap.set("n", "<leader>3", ":BufferLineGoToBuffer3<CR>", { silent = true })
		vim.keymap.set("n", "<leader>4", ":BufferLineGoToBuffer4<CR>", { silent = true })
		vim.keymap.set("n", "<leader>5", ":BufferLineGoToBuffer5<CR>", { silent = true })
		vim.keymap.set("n", "<leader>6", ":BufferLineGoToBuffer6<CR>", { silent = true })
		vim.keymap.set("n", "<leader>7", ":BufferLineGoToBuffer7<CR>", { silent = true })
		vim.keymap.set("n", "<leader>8", ":BufferLineGoToBuffer8<CR>", { silent = true })
		vim.keymap.set("n", "<leader>9", ":BufferLineGoToBuffer9<CR>", { silent = true })
	end,
}
