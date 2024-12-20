local function readHeader()
    local filename = "header.txt"
    local file = io.open(filename, "r")
    if not file then
        print("Error: Unable to open file " .. filename)
        return nil
    end
    local content = file:read("*all")
    file:close()
    return content
end

return {

    {
        "folke/snacks.nvim",
        opts = {
            dashboard = {
                preset = {
                    header = readHeader(),
                    keys = {
                        {
                            icon = " ",
                            key = "f",
                            desc = "Find File",
                            action = ":lua Snacks.dashboard.pick('files')",
                        },
                        { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                        {
                            icon = " ",
                            key = "g",
                            desc = "Find Text",
                            action = ":lua Snacks.dashboard.pick('live_grep')",
                        },
                        {
                            icon = " ",
                            key = "r",
                            desc = "Recent Files",
                            action = ":lua Snacks.dashboard.pick('oldfiles', { cwd = vim.uv.cwd() })",
                        },
                        {
                            icon = " ",
                            key = "c",
                            desc = "Config",
                            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
                        },
                        { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                        { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
                        { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
                        { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                    },
                },
            },
            scroll = {
                enabled = false,
                -- animate = {
                --     duration = { step = 5, total = 250 },
                --     easing = "linear",
                -- },
            },
        },
    },
}
