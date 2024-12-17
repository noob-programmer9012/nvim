return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup({
      override_by_extension = {
        ["handlebars"] = {
          icon = "",
          -- icon = "",
          -- color = "#81e043",
          color = "#e44d26",
          name = "Log",
        },
      },
    })
  end,
}
