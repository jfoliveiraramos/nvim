return {
    {
        "stevearc/conform.nvim",
        opts = function()
            local util = require("conform.util")
            local opts = {
                formatters_by_ft = {
                    python = { "ruff_organize_imports", "ruff_format", "mypy" },
                    lua = { "stylua" },
                    rust = { "rustfmt" },
                    fish = { "fish_indent" },
                    sh = { "shfmt" },
                    php = { "pint" },
                    javascript = { "prettierd", "eslint_d" },
                    typescript = { "prettierd", "eslint_d" },
                    javascriptreact = { "prettierd", "eslint_d" },
                    typescriptreact = { "prettierd", "eslint_d" },
                    go = { "gofmt" },
                    json = { "prettierd" },
                    yaml = { "prettierd" },
                },
                formatters = {
                    pint = {
                        command = "./vendor/bin/pint",
                        cwd = util.root_file({ "composer.json", "pint.json" }),
                        args = { "$FILENAME" },
                        stdin = false,
                    },
                    prettierd = {
                        cwd = util.root_file({ ".git" }),
                    },
                    eslint_d = {
                        cwd = util.root_file({ ".git" }),
                    },
                },
            }
            return opts
        end,
    },
}
