return {
    {
        "stevearc/conform.nvim",
        opts = function()
            local opts = {
                formatters_by_ft = {
                    lua = { "stylua" },
                    fish = { "fish_indent" },
                    sh = { "shfmt" },
                    php = { "php_cs_fixer" },
                    blade = { "php_cs_fixer", "blade-formatter" },
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
