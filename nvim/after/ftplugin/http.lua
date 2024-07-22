vim.keymap.set({ "n", "i" }, "<C-Enter>", function()
  require("kulala").run()
end, { desc = "Send HTTP Request", buffer = true })

vim.keymap.set({ "n", "i" }, "<A-Enter>", function()
  require("kulala").run()
end, { desc = "Send HTTP Request", buffer = true })
