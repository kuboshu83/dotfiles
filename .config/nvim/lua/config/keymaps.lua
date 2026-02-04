-- basic
vim.api.nvim_set_keymap("n", "<C-h>", "<cmd>bprev<cr>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<C-l>", "<cmd>bnext<cr>", {noremap=true, silent=true})

-- nvim-tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", {noremap = true, silent=true})

vim.api.nvim_set_keymap("n", "<Leader>;", ":lua require('config.base').ToggleLineNumber()<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<Leader>:", ":lua require('config.base').ToggleRelativeLineNumber()<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<C-d>", ":lua require('config.base').DeleteCurrentBuffer()<cr>", {noremap=true, silent=true})
