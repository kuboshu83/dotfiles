return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.diagnostic.config({
            virtual_text = true,
            underline = true,
            update_in_insert = false,
            severity_sort = true,
            float = {
                border = "rounded",
                source = true,
            },

        })

        vim.lsp.config("lua_ls", {
            runtime = {
                version = "LuaJIT",
            },
            workspace = {
                library = {
                    vim.env.VIMRUNTIME,
                },
            },
        })
        vim.lsp.enable("lua_ls")
    end,
}
