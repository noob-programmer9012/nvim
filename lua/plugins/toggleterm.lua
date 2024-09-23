return {

  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {},
  config = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "tab" })
    local btop = Terminal:new({ cmd = "btop", hidden = true, direction = "tab" })
    local mongosh = Terminal:new({ cmd = "mongosh", hidden = true, direction = "tab" })

    function Lazygit_toggle()
      lazygit:toggle()
    end

    function Btop_toggle()
      btop:toggle()
    end

    function Mongosh_toggle()
      mongosh:toggle()
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
    vim.api.nvim_set_keymap("n", "<leader>gb", "<cmd>lua Btop_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>gm", "<cmd>lua Mongosh_toggle()<CR>", { noremap = true, silent = true })
  end,
}
