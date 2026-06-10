return {
	{
		"nvim-lualine/lualine.nvim",
		-- opts = function(_, opts)
		-- 	local trouble = require("trouble")
		-- 	local symbols = trouble.statusline({
		-- 		mode = "lsp_document_symbols",
		-- 		groups = {},
		-- 		title = false,
		-- 		filter = { range = true },
		-- 		format = "{kind_icon}{symbol.name:Normal}",
		-- 		-- The following line is needed to fix the background color
		-- 		-- Set it to the lualine section you want to use
		-- 		hl_group = "lualine_c_normal",
		-- 	})
		-- 	table.insert(opts.sections.lualine_c, {
		-- 		symbols.get,
		-- 		cond = symbols.has,
		-- 	})
		-- end,
		config = function()
			require("lualine").setup({
				options = {
					theme = "nightfox",
					icons_enabled = true,
					component_separators = "",
					disabled_filetypes = { -- Filetypes to disable lualine for.
						"packer",
						"NvimTree",
					},
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = {
						"branch",
						"diff",
						{
							"diagnostics",
							sources = { "nvim_diagnostic" },
							symbols = { error = " ", warn = " ", info = " ", hint = " " },
						},
					},
					lualine_c = { "filename" },
                    lualine_x = { "fileformat", "filetype" },
                    lualine_y = { },
                    lualine_z = { "location" },
				},
			})
		end,
	},
}
