require("config.lazy")
require("config.nvim-tree")

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", {noremap = true, silent=true})
