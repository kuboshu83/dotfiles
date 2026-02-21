local opts = { noremap = true, silent = true }

-- base
vim.api.nvim_set_keymap("n", "<Leader>;", ":lua require('config.utils').ToggleLineNumber()<cr>", opts)
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", opts)

-- tab
vim.keymap.set("n", "<tab>", "<cmd>tabnext<cr>", opts)
vim.keymap.set("n", "<s-tab>", "<cmd>tabprevious<cr>", opts)
vim.keymap.set("n", "tf", "<cmd>tabfirst<cr>", opts)
vim.keymap.set("n", "tp", "<cmd>tabprevious<cr>", opts)
vim.keymap.set("n", "tn", "<cmd>tabnext<cr>", opts)
vim.keymap.set("n", "tl", "<cmd>tablast<cr>", opts)
vim.keymap.set("n", "te", "<cmd>tabedit .<cr>", opts)
vim.keymap.set("n", "tq", "<cmd>tabclose<cr>", opts)

-- lsp
vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<cr>", opts)
vim.keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<cr>", opts)
vim.keymap.set("n", "gr", ":lua vim.lsp.buf.references()<cr>", { noremap = true, silent = true, nowait = true })
vim.keymap.set("n", "gn", ":lua vim.lsp.buf.rename()<cr>", opts)

-- nvim-tree
vim.api.nvim_set_keymap("n", "<leader>e", ":lua require('config.utils').OpenOrCloseNvimTree()<cr>", opts)

-- toggle terminal
vim.keymap.set({ "n", "t" }, "<c-.>", "<cmd>ToggleTerm<cr>", opts)
vim.keymap.set("t", "<esc>", [[<c-\><c-n>]], opts)

-- move window
vim.keymap.set("n", "sh", "<c-w>h", opts)
vim.keymap.set("n", "sj", "<c-w>j", opts)
vim.keymap.set("n", "sk", "<c-w>k", opts)
vim.keymap.set("n", "sl", "<c-w>l", opts)

-- split window
vim.keymap.set("n", "ss", ":split<cr>", opts)
vim.keymap.set("n", "sv", ":vsplit<cr>", opts)
