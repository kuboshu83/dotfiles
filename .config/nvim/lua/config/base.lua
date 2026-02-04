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

local M = {}

function M.ToggleLineNumber()
    vim.o.number = not(vim.o.number)
end

function M.ToggleRelativeLineNumber()
    vim.o.relativenumber = not(vim.o.relativenumber)
end

return M
