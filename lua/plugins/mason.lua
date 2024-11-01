return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "ts_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
				settings = {
					typescript = {
						diagnostics = {
							ignoredCodes = {
								80001, -- CommonJS/ES module diagnostic
								-- 80006, -- Other module-related diagnostic
								-- 80007, -- Additional module suggestion
								-- 80003, -- Module suggestions
								-- 80004, -- Module suggestions
								-- 80005, -- Module suggestions
							},
						},
						suggestionActions = {
							enabled = true, -- Disable suggestion actions
						},
					},
					javascript = {
						diagnostics = {
							ignoredCodes = {
								80001,
								-- 80006,
								-- 80007,
								-- 80003,
								-- 80004,
								-- 80005,
							},
						},
						suggestionActions = {
							enabled = true,
						},
					},
				},
				init_options = {
					preferences = {
						disableSuggestions = true,
					},
				},
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { silent = true })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { silent = true })
			vim.keymap.set("n", "<leader>li", ":LspInfo<CR>", { silent = true })
		end,
	},
}
