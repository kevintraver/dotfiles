vim.keymap.set("n", "<C-Enter>", function()
  require("rest-nvim").run()
end, { desc = "Send HTTP Request", buffer = true })

vim.keymap.set("n", "<D-Enter>", function()
  require("rest-nvim").run()
end, { desc = "Send HTTP Request", buffer = true })
