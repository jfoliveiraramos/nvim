return {
    {
        "saghen/blink.cmp",
        lazy = false, -- lazy loading handled internally
        dependencies = "rafamadriz/friendly-snippets",
        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
            keymap = {
                preset = "default",
            },

            --   ['<Down>'] = { 'select_next', 'fallback' }, },

            appearance = {
                use_nvim_cmp_as_default = true,
                nerd_font_variant = "mono",
            },

            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
                -- optionally disable cmdline completions
                -- cmdline = {},
            },
        },
    },
}
