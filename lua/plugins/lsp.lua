return {
    {
        "neovim/nvim-lspconfig",
        event = "LazyFile",
        opts = {
            diagnostics = {
                virtual_text = true,
                update_in_insert = true,
            },
        },
    },
}
