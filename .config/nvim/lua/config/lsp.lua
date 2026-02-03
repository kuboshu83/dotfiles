local cmp = require("cmp")
cmp.setup({
	sources = {
		{name = "nvim_lsp"},
		{name = "buffer"},
		{name = "path"},
	},
	mapping = cmp.mapping.preset.insert({
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm({select = true}),
	})
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("lua_ls", {
	capabilities = capabilities,
})

