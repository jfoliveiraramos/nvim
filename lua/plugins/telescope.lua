return {
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            {
                "<leader>pf",
                function()
                    require("telescope.builtin").find_files({
                        hidden = true,
                    })
                end,
                desc = "Find Plugin File",
            },
        },
    },
}
