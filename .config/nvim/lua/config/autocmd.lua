vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		if vim.bo.buftype == "terminal" then
			vim.schedule(function()
				vim.cmd("startinsert")
			end)
		end
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
