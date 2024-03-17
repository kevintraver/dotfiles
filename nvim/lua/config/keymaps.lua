-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", ";", ":")

-- save file
vim.keymap.set({ "i", "x", "n", "s" }, "<D-s>", vim.cmd.write, {
  desc = "Save file",
})

-- windows
vim.keymap.set("n", "<D-l>", function()
  require("focus").split_nicely()
end, { desc = "Split Nicely" })

-- close/quit
vim.keymap.set({ "n", "i", "x" }, "<D-w>", function()
  vim.cmd.bdelete()
end, { desc = "Close" })

vim.keymap.set({ "n", "i", "x" }, "<D-q>", vim.cmd.quitall, {
  desc = "Quit all",
})
vim.keymap.set({ "n", "i", "x" }, "<D-S-q>", vim.cmd.Quit, {
  desc = "Quit! all",
})

-- new
vim.keymap.set("n", "<D-S-n>", vim.cmd.tabnew, { desc = "New tab" })
vim.keymap.set("n", "<D-n>", vim.cmd.tabnew, { desc = "New Tab" })
vim.keymap.set("n", "<leader><tab>n", vim.cmd.tabnew, { desc = "New Tab" })

-- tabs
vim.keymap.set("n", "<leader><space>", function()
  vim.cmd.tabprevious()
end, { desc = "Cycle Tab" })

-- unmap lazyvim keymaps
vim.keymap.del("n", "<leader>l")
vim.keymap.del("n", "<leader>L")
vim.keymap.del("n", "<leader><tab><tab>")

vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")

vim.keymap.set("t", "<D-e>", "<C-e>")

vim.keymap.set("n", "q", "")
vim.keymap.set("n", "Q", "")

vim.keymap.set("n", "<leader>le", function()
  require("oil").open(vim.fn.stdpath("config") .. "/lua/plugins")
end, { desc = "Edit Plugins Folder" })

vim.keymap.set("n", "<leader>lu", function()
  require("lazy").update()
end, { desc = "Lazy Update" })
