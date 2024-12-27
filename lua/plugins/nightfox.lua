return {
  "EdenEast/nightfox.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    -- Palettes are the base color defines of a colorscheme.
    -- You can override these palettes for each colorscheme defined by nightfox.
    local palettes = {
      carbonfox = {
        bg1 = "#1E1E2E",
        -- bg0 = "#161616",
        bg0 = "#141524",

        -- sel is different types of selection colors.
        sel0 = "#3e4a5b", -- Popup bg, visual selection bg
        sel1 = "#4f6074", -- Popup sel bg, search bg

        -- comment is the definition of the comment color.
        comment = "#60728a",
      },
    }

    local specs = {
      -- As with palettes, the values defined under `all` will be applied to every style.
      all = {
        syntax = {
          -- Specs allow you to define a value using either a color or template. If the string does
          -- start with `#` the string will be used as the path of the palette table. Defining just
          -- a color uses the base version of that color.
          keyword = "#f4a261",

          -- -- Adding either `.bright` or `.dim` will change the value
          -- conditional = "#f4a261",
          -- number = "#f4a261",
        },
        git = {
          -- A color define can also be used
          changed = "#f4a261",
        },
      },
    }

    require("nightfox").setup({
      -- options = {
      --   transparent = true,
      -- },
      palettes = palettes,
      specs = specs,
    })

    vim.cmd("colorscheme carbonfox")
  end,
}
