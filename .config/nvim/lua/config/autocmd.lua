vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "term://*",
    callback = function()
        local opts = {buffer = 0, noremap=true, silent=true}
        vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
    end,
})
