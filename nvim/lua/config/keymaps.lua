-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", ";", ":")

-- save file
vim.keymap.set({ "n" }, "<A-s>", function()
  vim.cmd.write()
end, { desc = "Save File" })

-- close
vim.keymap.set({ "n", "i", "x" }, "<A-w>", function()
  vim.cmd.close()
end, { desc = "Close Window" })

-- close
vim.keymap.set({ "n", "i", "x" }, "<A-C-w>", function()
  vim.cmd.bdelete()
end, { desc = "Close Buffer" })

vim.keymap.set("n", "<C-Space>", function()
  vim.cmd.buffer("#")
end, { desc = "Switch to Alternate Buffer" })

-- close
vim.keymap.set({ "n", "i", "x" }, "<A-S-w>", function()
  vim.cmd.bdelete()
end, { desc = "Close Buffer" })

-- quitall
vim.keymap.set({ "n", "i", "x" }, "<A-q>", function()
  vim.cmd.quitall()
end, { desc = "Quit All" })

-- new
vim.keymap.set({ "n", "i", "x" }, "<A-n>", function()
  vim.cmd.tabnew()
end, { desc = "New Tab" })

-- unmap lazyvim keymaps
vim.keymap.del("n", "<leader>l")
vim.keymap.del("n", "<leader>L")

vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")

vim.keymap.del("n", "<leader>qq")

vim.keymap.set("n", "q", "<Nop>", { noremap = true, silent = true })

-- join lines
vim.keymap.set({ "n", "x" }, "gJ", "J", { desc = "Join Lines" })
