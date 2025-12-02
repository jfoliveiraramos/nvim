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

vim.keymap.set("n", "<leader><C-e>", function()
    vim.cmd("Neotree reveal reveal_force_cwd")
end, { desc = "Explorer NeoTree: (expand)", silent = true })

vim.keymap.set("n", "<leader>fx", "<cmd>!chmod +x %<CR>", { desc = "Make current file executable", silent = true })

vim.keymap.set("n", "<leader>fy", function()
    local path = vim.fn.expand("%:p")
    if path ~= "" then
        vim.fn.setreg("+", path)
        vim.notify("Copied: " .. path)
    else
        vim.notify("No file path to copy", vim.log.levels.WARN)
    end
end, { desc = "Copy current file path", silent = true })

vim.keymap.set("n", "<leader>fY", function()
    local parent_path = vim.fn.expand("%:p:h")
    if parent_path ~= "" then
        vim.fn.setreg("+", parent_path)
        vim.notify("Copied parent directory path: " .. parent_path)
    else
        vim.notify("No parent directory path to copy", vim.log.levels.WARN)
    end
end, { desc = "Copy parent directory path", silent = true })

vim.keymap.set("n", "<C-a>", "ggVG")
vim.keymap.set("i", "jk", "<ESC>", { silent = true })
vim.keymap.set("i", "<C-+>", "<ESC>", { silent = true })
vim.keymap.set("n", "<C-+>", "<ESC>", { silent = true })
