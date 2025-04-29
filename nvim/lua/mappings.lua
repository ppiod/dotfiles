require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i" }, "<A-l>", "<Esc>i|", { desc = "Insert |" })
map({ "n", "i" }, "<A-k>", "<Esc>i\\", { desc = "Insert \\" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
