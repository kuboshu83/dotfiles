vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", {
	italic = true,
	undercurl = true,
})

vim.api.nvim_set_hl(0, "@lsp.mod.unused", {
	italic = true,
	undercurl = true,
})

-- completion
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
