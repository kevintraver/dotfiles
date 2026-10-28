-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "x" }, ";", ":")

-- Readline/macOS editing keys in insert and command-line mode
-- (<C-u> and <C-w> are native; see also macOS/DefaultKeyBinding.dict)
vim.keymap.set(
  { "i", "c" },
  "<C-a>",
  "<Home>",
  { desc = "Move To Beginning of Line" }
)
vim.keymap.set({ "i", "c" }, "<C-e>", "<End>", { desc = "Move To End Of Line" })
vim.keymap.set({ "i", "c" }, "<C-d>", "<Del>", { desc = "Delete Forward" })
vim.keymap.set("i", "<C-k>", "<C-o>D", { desc = "Delete To End Of Line" })
vim.keymap.set("c", "<C-k>", function()
  vim.fn.setcmdline(vim.fn.getcmdline():sub(1, vim.fn.getcmdpos() - 1))
end, { desc = "Delete To End Of Line" })

-- save file
vim.keymap.set({ "n", "i", "x" }, "<D-s>", function()
  vim.cmd.write()
end, { desc = "Save File" })

-- close
vim.keymap.set({ "n", "i", "x" }, "<M-w>", function()
  vim.cmd.stopinsert()
  vim.cmd.close()
end, { desc = "Close Window" })

-- quitall
vim.keymap.set({ "n", "i", "x" }, "<D-q>", function()
  vim.cmd.quitall()
end, { desc = "Quit All" })

-- new
vim.keymap.set({ "n", "i", "x" }, "<D-n>", function()
  vim.cmd.tabnew()
end, { desc = "New Tab" })

-- unmap lazyvim keymaps
vim.keymap.del("n", "<leader>l")
vim.keymap.del("n", "<leader>L")

vim.keymap.del("n", "<leader>gl")
vim.keymap.del("n", "<leader>gL")

vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")

vim.keymap.del("n", "<leader>qq")

vim.keymap.set("n", "q", "<Nop>")

-- join lines
vim.keymap.set({ "n", "x" }, "gJ", "J", { desc = "Join Lines" })

-- Fix to be able to remap tab
vim.keymap.set("n", "<C-i>", "<C-i>")
