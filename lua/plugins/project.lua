return {
	"ahmedkhalf/project.nvim",
	config = function()
		require("project_nvim").setup({
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			patterns = {
				"*.js",
				"=client",
				"=server",
				"package.json",
				".git",
				"_darcs",
				".hg",
				".bzr",
				".svn",
				"Makefile",
				-- "app.js",
				-- "main.js",
				-- "index.js",
				"*.c",
				"*.cpp",
			},
			detection_methods = { "pattern", "lsp" },
		})
	end,
}
