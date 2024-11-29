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
				ensure_installed = { "lua_ls", "clangd", "ts_ls", "dockerls", "ast_grep" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.ast_grep.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			-- EMMET for html snippets in react
			lspconfig.emmet_language_server.setup({
				filetypes = {
					"css",
					"eruby",
					"html",
					"javascript",
					"javascriptreact",
					"less",
					"sass",
					"scss",
					"pug",
					"typescriptreact",
				},
				-- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
				-- **Note:** only the options listed in the table are supported.
				init_options = {
					---@type table<string, string>
					includeLanguages = {},
					--- @type string[]
					excludeLanguages = {},
					--- @type string[]
					extensionsPath = {},
					--- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
					preferences = {},
					--- @type boolean Defaults to `true`
					showAbbreviationSuggestions = true,
					--- @type "always" | "never" Defaults to `"always"`
					showExpandedAbbreviation = "always",
					--- @type boolean Defaults to `false`
					showSuggestionsAsSnippets = false,
					--- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
					syntaxProfiles = {},
					--- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
					variables = {},
				},
			})
			-- end
			lspconfig.dockerls.setup({
				capabilities = capabilities,
				settings = {
					docker = {
						languageserver = {
							formatter = {
								ignoreMultilineInstructions = true,
							},
						},
					},
				},
			})
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
