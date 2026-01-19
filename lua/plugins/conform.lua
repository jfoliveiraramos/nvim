return {
    {
        "stevearc/conform.nvim",
        opts = function()
            local util = require("conform.util")
            local opts = {
                formatters_by_ft = {
                    c = { "clang_format" },
                    cpp = { "clang_format" },
                    h = { "clang_format" },
                    hpp = { "clang_format" },
                    zig = { "zig_fmt" },
                    python = { "ruff_organize_imports", "ruff_format", "mypy" },
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
                    go = { "gofmt" },
                    json = { "prettier" },
                    yaml = { "prettier" },
                    toml = { "taplo" },
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
                    zig_fmt = {
                        command = "zig",
                        args = { "fmt", "--stdin" },
                        stdin = true,
                    },
                },
            }
            return opts
        end,
    },
}
