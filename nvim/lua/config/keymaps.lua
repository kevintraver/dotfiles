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
vim.keymap.set({ "n", "i" }, "<D-l>", vim.cmd.vsplit, {
  desc = "Split window vertical",
})
vim.keymap.set({ "n", "i" }, "<D-S-l>", vim.cmd.split, {
  desc = "Split window horizontal",
})

-- close/quit
vim.keymap.set({ "n", "i", "x" }, "<D-w>", function()
  vim.cmd.close()
end, { desc = "Close" })

vim.keymap.set({ "n", "i", "x" }, "<D-q>", vim.cmd.quitall, {
  desc = "Quit all",
})
vim.keymap.set({ "n", "i", "x" }, "<D-S-q>", vim.cmd.Quit, {
  desc = "Quit! all",
})

-- new
vim.keymap.set("n", "<D-S-n>", vim.cmd.tabnew, { desc = "New tab" })
vim.keymap.set("n", "<D-n>", vim.cmd.vnew, { desc = "New File" })
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

-- Use regular (not filtered) put in terminals
vim.api.nvim_create_autocmd("TermEnter", {
  callback = function(event)
    vim.keymap.set("n", "p", "<Plug>(YankyPutAfter)", {
      buffer = event.buf,
      silent = true,
    })
    vim.keymap.set("n", "P", "<Plug>(YankyPutBefore)", {
      buffer = event.buf,
      silent = true,
    })
  end,
})

vim.keymap.set("t", "<D-e>", "<C-e>")

vim.keymap.set("n", "q", "")
vim.keymap.set("n", "Q", "")

vim.keymap.set("n", "<leader>le", function()
  require("oil").open("~/.dotfiles/nvim/lua/plugins")
end, { desc = "Edit Plugins Folder" })

vim.keymap.set("n", "<leader>lu", function()
  require("lazy").update()
end, { desc = "Lazy Update" })
