return {
    "folke/flash.nvim",
    event = "VeryLazy",
    vscode = true,
    opts = {
        modes = {
            search = {
                enabled = false,
            },
            char = {
                enabled = true,
                jump_labels = false,
            },
        },
    },
       -- stylua: ignore start
       keys = {
        { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
        { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
        { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
        { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        { "<C-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        {
            "<C-space>", mode = { "n", "o", "x" },
            function()
                require("flash").treesitter({
                actions = {
                    ["<C-space>"] = "next",
                    ["<BS>"] = "prev"
                }
                })
            end, desc = "Treesitter Incremental Selection"
        },
    },
}
