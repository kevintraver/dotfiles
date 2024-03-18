-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", ";", ":")

-- save file
vim.keymap.set({ "i", "x", "n", "s" }, "<A-s>", vim.cmd.write, {
  desc = "Save file",
})

-- windows
vim.keymap.set("n", "<A-l>", function()
  require("focus").split_nicely()
end, { desc = "Split Nicely" })

-- close/quit
vim.keymap.set({ "n", "i", "x" }, "<A-w>", function()
  vim.cmd.bdelete()
end, { desc = "Close" })

vim.keymap.set({ "n", "i", "x" }, "<A-q>", vim.cmd.quitall, {
  desc = "Quit all",
})
vim.keymap.set({ "n", "i", "x" }, "<A-S-q>", vim.cmd.Quit, {
  desc = "Quit! all",
})

-- new
vim.keymap.set("n", "<A-S-n>", vim.cmd.tabnew, { desc = "New tab" })
vim.keymap.set("n", "<A-n>", vim.cmd.tabnew, { desc = "New Tab" })
vim.keymap.set("n", "<leader><tab>n", vim.cmd.tabnew, { desc = "New Tab" })

-- tabs
vim.keymap.set("n", "<leader><space>", function()
  vim.cmd.buffer("#")
end, { desc = "Switch to Other Buffer" })

-- unmap lazyvim keymaps
vim.keymap.del("n", "<leader>l")
vim.keymap.del("n", "<leader>L")
vim.keymap.del("n", "<leader><tab><tab>")

vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")

vim.keymap.del("n", "<leader>qq")
