-- ~/.config/nvim/lua/user/keymaps.lua

local map = vim.keymap.set

-- Bessere Fenster-Navigation
map("n", "<C-h>", "<C-w>h", { desc = "Gehe zum linken Fenster" })
map("n", "<C-j>", "<C-w>j", { desc = "Gehe zum unteren Fenster" })
map("n", "<C-k>", "<C-w>k", { desc = "Gehe zum oberen Fenster" })
map("n", "<C-l>", "<C-w>l", { desc = "Gehe zum rechten Fenster" })

-- Buffer-Navigation
map("n", "<leader>bd", ":bdelete<CR>", { desc = "Buffer schließen" })

-- Clipboard
map("n", "<leader>y", '"+y', { desc = "Yank zum System-Clipboard" })
map("v", "<leader>y", '"+y', { desc = "Yank zum System-Clipboard" })
map("n", "<leader>p", '"+p', { desc = "Paste vom System-Clipboard" })
