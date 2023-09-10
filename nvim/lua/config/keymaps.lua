-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if not vim.g.vscode then
  local neogit = require("neogit")

  vim.keymap.set("n", "<leader>gg", function()
    neogit.open()
  end, { desc = "Neogit Open" })

  vim.keymap.set("n", "<leader>gc", function()
    neogit.open({ "commit" })
  end, { desc = "Neogit Open" })
end
