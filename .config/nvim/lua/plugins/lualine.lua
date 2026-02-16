return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			icons_enabled = false,
			component_separators = "",
			section_separators = "",
			theme = "jellybeans",
		},
		sections = {
			lualine_a = {
				{
					"diagnostics",
					sections = { "error", "warn", "info", "hint" },
					diagnostics_color = {
						error = { fg = "#1e1e1e", bg = "#e06c75", gui = "bold" },
						warn = { fg = "#1e1e1e", bg = "#ff8800", gui = "bold" },
						info = "DiagnosticInfo",
						hint = { fg = "#1e1e1e", bg = "#689d6a", gui = "bold" },
					},
					symbols = {
						error = "ERROR:",
						warn = "WARN:",
						info = "INFO:",
						hint = "HINT:",
					},
				},
			},
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {
				{
					"encoding",
				},
				{
					"filetype",
				},
			},
		},
		tabline = {
			lualine_a = {
				{
					function()
						if not vim.bo.modifiable then
							return "-"
						end
						if vim.bo.readonly then
							return "r"
						end
						return ""
					end,
				},
				{
					"buffers",
					mode = 4,
					show_modified_status = true,
					symbols = {
						modified = "+",
						alternate_file = "",
					},
				},
			},
		},
	},
}
