return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "c",
        "cpp",
        "cmake",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "elixir",
        "heex",
        "javascript",
        "html",
        "markdown",
        "markdown_inline",
        "regex",
      },
      auto_install = true,
      sync_install = false,
      highlight = { enable = true, disable = { "c", "cpp" } },
      indent = { enable = true },
    })
    vim.treesitter.language.register("html", "handlebars")
  end,
}
