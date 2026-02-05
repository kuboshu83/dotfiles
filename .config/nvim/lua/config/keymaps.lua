-- base
vim.api.nvim_set_keymap("n", "<Leader>;", ":lua require('config.base').ToggleLineNumber()<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<Leader>:", ":lua require('config.base').ToggleRelativeLineNumber()<CR>", {noremap=true, silent=true})

-- buffer
vim.keymap.set("n", "bp", "<cmd>bprev<cr>", {noremap=true, silent=true})
vim.keymap.set("n", "bn", "<cmd>bnext<cr>", {noremap=true, silent=true})
vim.keymap.set("n", "bd", "<cmd>bdelete<cr>", {noremap=true, silent=true})

-- tab
vim.keymap.set("n", "<tab>", "<cmd>tabnext<cr>", {silent=true})
vim.keymap.set("n", "<s-tab>", "<cmd>tabprevious<cr>", {silent=true})
vim.keymap.set("n", "tf", "<cmd>tabfirst<cr>", {silent = true})
vim.keymap.set("n", "tp", "<cmd>tabprevious<cr>", {silent = true})
vim.keymap.set("n", "tn", "<cmd>tabnext<cr>", {silent = true})
vim.keymap.set("n", "tl", "<cmd>tablast<cr>", {silent = true})
vim.keymap.set("n", "te", "<cmd>tabedit .<cr>", {silent = true})
vim.keymap.set("n", "tq", "<cmd>tabclose<cr>", {silent = true})

-- nvim-tree
vim.api.nvim_set_keymap("n", "<leader>e", ":lua require('config.base').OpenOrCloseNvimTree()<cr>", {noremap = true, silent=true})

-- toggleterm 
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>", {noremap=true, silent=true})

-- telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
