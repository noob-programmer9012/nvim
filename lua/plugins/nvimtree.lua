return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      filters = {
        dotfiles = false,
      },
      -- sync_root_with_cwd = true,
      -- respect_buf_cwd = true,
      -- update_focused_file = {
      -- 	enable = true,
      -- 	update_root = true,
      -- },
    })
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
  end,
}
