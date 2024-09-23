return {

  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {},
  config = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "tab" })

    function Lazygit_toggle()
      lazygit:toggle()
    end

    require("toggleterm").setup({
      size = 30,
      open_mapping = [[<c-\>]],
      direction = "tab",
      float_opts = {
        border = "curved",
        width = 130,
        height = 35,
      },
    })

    vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua Lazygit_toggle()<CR>", { noremap = true, silent = true })
  end,
}
