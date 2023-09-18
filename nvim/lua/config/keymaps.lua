-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- save file
vim.keymap.set({ "i", "x", "n", "s" }, "<D-s>", vim.cmd.write, { desc = "Save file" })

-- windows
vim.keymap.set({ "n", "i" }, "<D-l>", vim.cmd.vsplit, { desc = "Split window right" })

-- close/quit
vim.keymap.set({ "n", "i" }, "<D-q>", vim.cmd.quitall, { desc = "Quit all" })
vim.keymap.set({ "n", "i" }, "<D-w>", vim.cmd.quit, { desc = "Close" })
vim.keymap.set({ "n", "i" }, "<D-S-q>", vim.cmd.Quit, { desc = "Quit! all" })

-- new
vim.keymap.set("n", "<D-S-n>", vim.cmd.tabnew, { desc = "New tab" })
vim.keymap.set("n", "<D-n>", vim.cmd.vnew, { desc = "New File" })

-- buffer
vim.keymap.set("n", "<leader><space>", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- tabs
vim.keymap.set("n", "<leader><tab>n", "<cmd>tabnew<cr>", { desc = "New Tab" })

-- unmap lazyvim keymaps
vim.keymap.set("n", "<leader>l", "")
vim.keymap.set("n", "<leader>L", "")
vim.keymap.set("n", "<leader><tab><tab>", "", { desc = "New Tab" })

-- Use regular (not filtered) put in terminals
vim.api.nvim_create_autocmd("TermEnter", {
  callback = function(event)
    vim.keymap.set("n", "p", "<Plug>(YankyPutAfter)", { buffer = event.buf, silent = true })
    vim.keymap.set("n", "P", "<Plug>(YankyPutBefore)", { buffer = event.buf, silent = true })
  end,
})

vim.keymap.set("t", "<D-e>", "<C-e>")

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "/tmp/zsh*",
  callback = function()
    vim.keymap.set({ "n", "i" }, "<D-e>", function()
      vim.cmd.write({ bang = true })
      vim.cmd.quit()
    end)
    vim.keymap.set({ "n", "i" }, "<D-w>", function()
      vim.cmd.write({ bang = true })
      vim.cmd.quit()
    end)
  end,
})
