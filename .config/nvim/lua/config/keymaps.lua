local opts = { noremap = true, silent = true }

-- base
vim.api.nvim_set_keymap("n", "<Leader>;", ":lua require('config.utils').ToggleLineNumber()<cr>", opts)

-- buffer
-- vim.keymap.set("n", "bp", "<cmd>bprev<cr>", opts)
-- vim.keymap.set("n", "bn", "<cmd>bnext<cr>", opts)
-- vim.keymap.set("n", "bd", "<cmd>bdelete<cr>", opts)

-- tab
vim.keymap.set("n", "<tab>", "<cmd>tabnext<cr>", opts)
vim.keymap.set("n", "<s-tab>", "<cmd>tabprevious<cr>", opts)
vim.keymap.set("n", "tf", "<cmd>tabfirst<cr>", opts)
vim.keymap.set("n", "tp", "<cmd>tabprevious<cr>", opts)
vim.keymap.set("n", "tn", "<cmd>tabnext<cr>", opts)
vim.keymap.set("n", "tl", "<cmd>tablast<cr>", opts)
vim.keymap.set("n", "te", "<cmd>tabedit .<cr>", opts)
vim.keymap.set("n", "tq", "<cmd>tabclose<cr>", opts)

-- nvim-tree
vim.api.nvim_set_keymap("n", "<leader>e", ":lua require('config.utils').OpenOrCloseNvimTree()<cr>", opts)

-- toggleterm
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>", opts)

-- telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files, opts)
vim.keymap.set("n", "<leader>fg", telescope.live_grep, opts)
vim.keymap.set("n", "<leader>fb", telescope.buffers, opts)
vim.keymap.set("n", "<leader>fh", telescope.help_tags, opts)
