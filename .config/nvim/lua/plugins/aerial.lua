return {
	"stevearc/aerial.nvim",
	opts = {
		on_attach = function(bufnr)
			vim.keymap.set("n", "{", "<cmd>AerialPrev<cr>", { buffer = bufnr, noremap = true, silent = true })
			vim.keymap.set("n", "}", "<cmd>AerialNext<cr>", { buffer = bufnr, noremap = true, silent = true })
		end,
		layout = {
			min_width = 30,
			default_direction = "left",
		},
		show_guides = true,
		filter_kind = false,
		highlight_on_jump = 300,
	},
	-- Optional dependencies
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>a", "<cmd>AerialToggle!<cr>" },
	},
}
