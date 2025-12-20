vim.cmd("set ignorecase")

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.shiftwidth = 4

vim.opt.tabstop = 4
vim.opt.cmdheight = 1

vim.opt.termguicolors = true

-- Set text colour for the dashboard
vim.api.nvim_set_hl(0, "DashboardText", { fg = "#FFFFFF" }) -- Set text to white
