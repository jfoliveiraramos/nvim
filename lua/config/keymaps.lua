vim.g.mapleader = " "

vim.keymap.set("n", "U", "<C-r>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("v", "<C-u>", "<C-u>zz")
vim.keymap.set("v", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-n>", "10jzz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-p>", "10kzz", { noremap = true, silent = true })
vim.keymap.set("v", "<C-n>", "10jzz", { noremap = true, silent = true })
vim.keymap.set("v", "<C-p>", "10kzz", { noremap = true, silent = true })

vim.keymap.set({ "n", "x" }, "<leader> <S-p>", [["0p]], { desc = "Paste from yank register" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-f>", "/")

vim.keymap.set("n", "<leader>fx", "<cmd>!chmod +x %<CR>", { desc = "Make current file executable", silent = true })

vim.keymap.set("n", "<C-a>", "ggVG")
vim.keymap.set("i", "jk", "<ESC>", { silent = true })
vim.keymap.set("i", "<C-+>", "<ESC>", { silent = true })
vim.keymap.set("n", "<C-+>", "<ESC>", { silent = true })

vim.keymap.set("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", {})
vim.keymap.set("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>", {})
vim.keymap.set("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>", {})
vim.keymap.set("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>", {})
