return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "kanagawa-wave",
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
            -- local _kanagawa = require("kanagawa")
        end,
        overrides = function(colors)
            local theme = colors.theme
            local makeDiagnosticColor = function(color)
                local c = require("kanagawa.lib.color")
                return { fg = color, bg = c(color):blend(theme.ui.bg, 0.95):to_hex() }
            end

            return {
                DiagnosticVirtualTextHint = makeDiagnosticColor(theme.diag.hint),
                DiagnosticVirtualTextInfo = makeDiagnosticColor(theme.diag.info),
                DiagnosticVirtualTextWarn = makeDiagnosticColor(theme.diag.warning),
                DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),
            }
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
