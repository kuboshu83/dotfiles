vim.api.nvim_set_keymap("n", "<Leader>;", ":lua require('config.base').ToggleLineNumber()<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<Leader>:", ":lua require('config.base').ToggleRelativeLineNumber()<CR>", {noremap=true, silent=true})
