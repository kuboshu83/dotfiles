return {
	"folke/snacks.nvim",
	-- set the priority to lower than color scheme.
	priority = 500,
	lazy = false,
	keys = {
		{
			",b",
			function()
				--  write require("snack") instead of Snacks, to avoid undefined warnings.
				require("snacks").picker.buffers()
			end,
			desc = "Buffers",
		},
		{
			",f",
			function()
				require("snacks").picker.files()
			end,
			desc = "Find Files",
		},
		{
			",g",
			function()
				require("snacks").picker.grep()
			end,
			desc = "Grep",
		},
		{
			",dd",
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
