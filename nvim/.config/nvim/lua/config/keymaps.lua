-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set
local del = vim.keymap.del

map("n", "<leader><tab>t", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>T", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Unmap annoying move on esc
del({ "n", "i", "v" }, "<A-j>")
del({ "n", "i", "v" }, "<A-k>")
