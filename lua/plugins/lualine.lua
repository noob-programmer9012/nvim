return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local colors = {
      color_fg0 = "#fbf1c7",
      color_bg1 = "#3c3836",
      color_bg3 = "#665c54",
      color_blue = "#458588",
      color_aqua = "#689d6a",
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
        c = { fg = colors.white, bg = colors.color_bg1 },
      },

      insert = { a = { fg = colors.color_fg0, bg = colors.color_aqua } },
      visual = { a = { fg = colors.color_fg0, bg = colors.color_blue } },
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
    })
  end,
}
