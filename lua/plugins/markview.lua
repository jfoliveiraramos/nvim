return {
    {
        "OXY2DEV/markview.nvim",
        lazy = false, -- Recommended
        -- ft = "markdown" -- If you decide to lazy-load anyway

        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
    },
    { "markdown-preview.nvim", enabled = false },
    { "MeanderingProgrammer/render-markdown.nvim", enabled = false },
}
