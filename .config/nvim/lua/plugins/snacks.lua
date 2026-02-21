return {
	"folke/snacks.nvim",
	-- set the priority to lower than color scheme.
	priority = 500,
	lazy = false,
	keys = {
		{
			"<leader>b",
			function()
				--  write require("snack") instead of Snacks, to avoid undefined warnings.
				require("snacks").picker.buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>f",
			function()
				require("snacks").picker.files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>g",
			function()
				require("snacks").picker.grep()
			end,
			desc = "Grep",
		},
		{
			"<leader>dd",
			function()
				require("snacks").bufdelete()
			end,
			desc = "Delete Buffer",
		},
	},
	opts = {
		picker = {
			icons = {
				enabled = false,
			},
		},
	},
}
