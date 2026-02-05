-- basic
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.opt.fillchars = {eob=" "}

-- lazy.nvim
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- nvim-tree
-- optionally enable 24-bit colour
vim.opt.termguicolors = true
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local M = {}

function M.ToggleLineNumber()
    vim.o.number = not(vim.o.number)
end

function M.ToggleRelativeLineNumber()
    vim.o.relativenumber = not(vim.o.relativenumber)
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
