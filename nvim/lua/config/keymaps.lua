-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", ";", ":")

-- save file
vim.keymap.set({ "i", "x", "n", "s" }, "<A-s>", function()
  vim.cmd.write()
end, { desc = "Save file" })

-- close
vim.keymap.set({ "n", "i", "x" }, "<A-w>", function()
  vim.cmd.bdelete()
end, { desc = "Close" })

-- quitall
vim.keymap.set({ "n", "i", "x" }, "<A-q>", function()
  vim.cmd.quitall()
end, { desc = "Quit all" })

-- unmap lazyvim keymaps
vim.keymap.del("n", "<leader>l")
vim.keymap.del("n", "<leader>L")

vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")

vim.keymap.del("n", "<leader>qq")
