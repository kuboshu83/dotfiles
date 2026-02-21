return {
	"stevearc/aerial.nvim",
	opts = {
		on_attach = function(bufnr)
			vim.keymap.set("n", "{", "<cmd>AerialPrev<cr>", { buffer = bufnr, noremap = true, silent = true })
			vim.keymap.set("n", "}", "<cmd>AerialNext<cr>", { buffer = bufnr, noremap = true, silent = true })
		end,
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
