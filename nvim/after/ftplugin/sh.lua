vim.keymap.set({ "n", "i" }, "<C-Enter>", function()
  require("toggleterm").send_lines_to_terminal("single_line", true, {})
end, { desc = "Send line to terminal", buffer = true })

vim.keymap.set({ "n", "i" }, "<D-Enter>", function()
  require("toggleterm").send_lines_to_terminal("single_line", true, {})
end, { desc = "Send line to terminal", buffer = true })
