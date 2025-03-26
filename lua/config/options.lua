vim.cmd("set ignorecase")

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.shiftwidth = 4

vim.opt.tabstop = 4
vim.opt.cmdheight = 1

vim.opt.termguicolors = true
-- vim.g.zig_fmt_autosave = 1
-- Assuming you've already installed and configured snacks.nvim

-- Set text colour for the dashboard
vim.api.nvim_set_hl(0, "DashboardText", { fg = "#FFFFFF" }) -- Set text to white
