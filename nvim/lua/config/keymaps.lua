-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- save file
vim.keymap.set({ "i", "x", "n", "s" }, "<D-s>", vim.cmd.write, { desc = "Save file" })

-- windows
vim.keymap.set("n", "<D-l>", vim.cmd.vsplit, { desc = "Split window right" })

vim.keymap.set("n", "<D-q>", vim.cmd.quitall, { desc = "Quit all" })
vim.keymap.set("n", "<D-w>", vim.cmd.quit, { desc = "Close" })
vim.keymap.set("n", "<D-S-q>", vim.cmd.Quit, { desc = "Quit! all" })

-- new
vim.keymap.set("n", "<D-S-n>", vim.cmd.tabnew, { desc = "New tab" })
vim.keymap.set("n", "<D-n>", vim.cmd.vnew, { desc = "New File" })

-- unmap lazyvim keymaps
vim.keymap.set("n", "<leader>l", "")
vim.keymap.set("n", "<leader>L", "")
vim.keymap.set("n", "<leader><tab><tab>", "", { desc = "New Tab" })

vim.keymap.set("n", "<leader><space>", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

vim.keymap.set("n", "<leader><tab>n", "<cmd>tabnew<cr>", { desc = "New Tab" })
