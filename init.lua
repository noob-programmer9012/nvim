vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")
vim.cmd("set expandtab")
vim.cmd("set number")
vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.filetype.add({
  extension = {
    handlebars = "handlebars",
  },
}) --source this file after running vim.filetype.add()

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true })

require("config.lazy")
require("mason").setup()
--vim.cmd([[colorscheme tokyonight-night]])
