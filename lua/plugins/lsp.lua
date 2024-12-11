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
    -- {
    --     "ErichDonGubler/lsp_lines.nvim",
    --     config = function()
    --         require("lsp_lines").setup()
    --     end,
    -- },
}
