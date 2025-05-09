return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "nordic",
        },
    },
    {
        "shaunsingh/nord.nvim",
    },
    {
        "AlexvZyl/nordic.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = {
                bg = true,
            },
            on_highlight = function(highlights, _)
                highlights.Visual = vim.tbl_extend("force", highlights.Visual or {}, {
                    italic = true,
                    bg = "#dcdcdc",
                    fg = "#000000",
                })
            end,
        },
    },
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        config = function()
            -- local kanagawa = require("kanagawa")
        end,
    },
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        opts = {
            flavour = "mocha",
            transparent_background = true,
            integrations = {
                aerial = true,
                alpha = true,
                cmp = true,
                dashboard = true,
                flash = true,
                gitsigns = true,
                headlines = true,
                illuminate = true,
                indent_blankline = { enabled = true },
                leap = true,
                lsp_trouble = true,
                mason = true,
                markdown = true,
                mini = true,
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
                navic = { enabled = true, custom_bg = "lualine" },
                neotest = true,
                neotree = true,
                noice = true,
                notify = true,
                semantic_tokens = true,
                telescope = true,
                treesitter = true,
                treesitter_context = true,
                which_key = true,
            },
        },
    },
}
