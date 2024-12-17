-- return {
-- 	"goolord/alpha-nvim",
-- 	dependencies = {
-- 		"nvim-tree/nvim-web-devicons",
-- 		config = function()
-- 			require("nvim-web-devicons").setup({
-- 				override_by_extension = {
-- 					["handlebars"] = {
-- 						icon = "",
-- 						-- icon = "",
-- 						-- color = "#81e043",
-- 						color = "#e44d26",
-- 						name = "Log",
-- 					},
-- 				},
-- 			})
-- 		end,
-- 	},
--
-- 	config = function()
-- 		local alpha = require("alpha")
-- 		local dashboard = require("alpha.themes.dashboard")
--
-- 		dashboard.section.header.val = {
-- 			[[                                                                       ]],
-- 			[[                                                                       ]],
-- 			[[                                                                       ]],
-- 			[[                                                                       ]],
-- 			[[                                                                     ]],
-- 			[[       ████ ██████           █████      ██                     ]],
-- 			[[      ███████████             █████                             ]],
-- 			[[      █████████ ███████████████████ ███   ███████████   ]],
-- 			[[     █████████  ███    █████████████ █████ ██████████████   ]],
-- 			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
-- 			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
-- 			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
-- 			[[                                                                       ]],
-- 			[[                                                                       ]],
-- 			[[                                                                       ]],
-- 		}
--
-- 		alpha.setup(dashboard.config)
-- 	end,
-- }

return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local alpha = require("alpha")
    local theta = require("alpha.themes.theta")
    theta.file_icons.provider = "devicons"
    theta.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    alpha.setup(theta.config)
  end,
}
