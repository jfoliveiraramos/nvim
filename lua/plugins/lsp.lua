return {
    {
        "neovim/nvim-lspconfig",
        event = "LazyFile",
        opts = {
            diagnostics = {
                virtual_text = false,
                update_in_insert = false,
            },
        },
    },
    {
        "ErichDonGubler/lsp_lines.nvim",
        config = function()
            require("lsp_lines").setup()
        end,
    },
}
