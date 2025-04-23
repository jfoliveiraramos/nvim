return {
    {
        "stevearc/conform.nvim",
        opts = function()
            local opts = {
                formatters_by_ft = {
                    lua = { "stylua" },
                    rust = { "rustfmt" },
                    fish = { "fish_indent" },
                    sh = { "shfmt" },
                    php = { "pint", "php_cs_fixer" },
                    javascript = { "prettier", "eslint" },
                    typescript = { "prettier", "eslint" },
                    javascriptreact = { "prettier", "eslint" },
                    typescriptreact = { "prettier", "eslint" },
                },
            }
            return opts
        end,
    },
}
