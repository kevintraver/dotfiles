vim.keymap.set({ "n", "i" }, "<C-Enter>", function()
  require("rest-nvim").run()
end, { desc = "Send HTTP Request", buffer = true })

vim.keymap.set({ "n", "i" }, "<A-Enter>", function()
  require("rest-nvim").run()
end, { desc = "Send HTTP Request", buffer = true })
