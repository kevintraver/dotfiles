-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- save file
vim.keymap.set({ "i", "x", "n", "s" }, "<D-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- windows
vim.keymap.set("n", "<D-d>", "<C-W>v", { desc = "Split window right", remap = true })
vim.keymap.set("n", "<D-w>", "<C-W>c", { desc = "Delete window", remap = true })

vim.keymap.set("n", "<D-q>", "<cmd>qa<cr>", { desc = "Quit all" })
