vim.cmd("set number")
vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")
vim.cmd("set expandtab")
vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.filetype.add({
	extension = {
		handlebars = "handlebars",
	},
}) --source this file after running vim.filetype.add()

-- vim.api.nvim_create_autocmd("VimEnter", {
-- 	callback = function()
-- 		vim.cmd("set number")
-- 	end,
-- })

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true })

--colors
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#161616", fg = "#5E81AC" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#161616" })
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#161616" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "#161616" })

require("config.lazy")
require("mason").setup()
--vim.cmd([[colorscheme tokyonight-night]])
