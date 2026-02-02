require("config")

vim.opt.fillchars = {eob=" "}

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", {noremap = true, silent=true})
