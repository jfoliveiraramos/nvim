return {
    {
        "saghen/blink.cmp",
        lazy = false, -- lazy loading handled internally
        build = "cargo build --release", -- critical for Rust compilation
        config = function()
            require("blink.cmp").setup({
                fuzzy = { implementation = "prefer_rust" }, -- enforce Rust matcher
                signature = { enabled = true },
            })
        end,
        dependencies = "rafamadriz/friendly-snippets",
        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
            keymap = {
                preset = "default",
            },

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
