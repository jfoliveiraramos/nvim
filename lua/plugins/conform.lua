return {
    {
        "stevearc/conform.nvim",
        opts = function()
            local util = require("conform.util")
            local opts = {
                formatters_by_ft = {
                    lua = { "stylua" },
                    rust = { "rustfmt" },
                    fish = { "fish_indent" },
                    sh = { "shfmt" },
                    php = { "pint" },
                    javascript = { "prettier", "eslint" },
                    typescript = { "prettier", "eslint" },
                    javascriptreact = { "prettier", "eslint" },
                    typescriptreact = { "prettier", "eslint" },
                    svelte = { "prettier", "eslint" },
                },
                formatters = {
                    pint = {
                        command = "./vendor/bin/pint",
                        cwd = util.root_file({ "composer.json", "pint.json" }),
                        args = { "$FILENAME" },
                        stdin = false,
                    },
                },
            }
            return opts
        end,
    },
}
