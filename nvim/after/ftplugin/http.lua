vim.keymap.set({ "n", "i" }, "<C-Enter>", function()
  require("rest-nvim.functions").exec("cursor")
end, { desc = "Send HTTP Request", buffer = true })

vim.keymap.set({ "n", "i" }, "<A-Enter>", function()
  require("rest-nvim.functions").exec("cursor")
end, { desc = "Send HTTP Request", buffer = true })
