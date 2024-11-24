-- return {
--   "nvimtools/none-ls.nvim",
--   dependencies = {
--     "nvimtools/none-ls-extras.nvim",
--   },
--   config = function()
--     local null_ls = require("null-ls")
--
--     null_ls.setup({
--       sources = {
--         null_ls.builtins.formatting.stylua,
--         null_ls.builtins.formatting.prettier,
--         null_ls.builtins.formatting.clang_format,
--         null_ls.builtins.diagnostics.hadolint,
--         -- require("none-ls.diagnostics.eslint"),
--       },
--       on_attach = function(client, bufnr)
--         if client.supports_method("textDocument/formatting") then
--           vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
--           vim.api.nvim_create_autocmd("BufWritePre", {
--             group = augroup,
--             buffer = bufnr,
--             callback = function()
--               -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
--               -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
--               vim.lsp.buf.format({ async = false })
--             end,
--           })
--         end
--       end,
--     })
--     vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { silent = true })
--   end,
-- }

return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier.with({
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "css",
            "scss",
            "html",
            "handlebars",
            "json",
            "yaml",
            "markdown",
            "graphql",
            "md",
            "txt",
            "dockerfile", -- Add dockerfile to prettier filetypes
          },
        }),
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.diagnostics.hadolint, -- Keep hadolint for Dockerfile linting
      },
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ async = false })
            end,
          })
        end
      end,
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { silent = true })
  end,
}
