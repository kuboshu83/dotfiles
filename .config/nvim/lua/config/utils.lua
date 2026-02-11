local M = {}

function M.ToggleLineNumber()
	vim.o.number = not vim.o.number
	vim.o.relativenumber = not vim.o.relativenumber
end

function M.OpenOrCloseNvimTree()
	local api = require("nvim-tree.api")
	if api.tree.is_visible() then
		local current_window_id = vim.api.nvim_get_current_win()
		local tree_window_id = api.tree.winid()
		if current_window_id == tree_window_id then
			api.tree.close()
		else
			api.tree.focus()
		end
	else
		api.tree.open()
	end
end

return M
