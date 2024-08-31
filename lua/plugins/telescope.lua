return {
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            {
                "<leader>pf",
                function()
                    require("telescope.builtin").find_files()
                end,
                desc = "Find Plugin File",
            },
        },
        find_files = {
            hidden = true,
        },
    },
}
