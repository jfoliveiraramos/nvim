return {
    {
        "ibhagwan/fzf-lua",
        keys = {
            { "<leader>pf", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
            { "<leader>pF", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
            { "<leader>pr", LazyVim.pick("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },
            { "<leader>pR", "<cmd>FzfLua oldfiles<cr>", desc = "Recent" },
        },
    },
}
