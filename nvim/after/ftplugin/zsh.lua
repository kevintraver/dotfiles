vim.keymap.set({ "n", "i" }, "<C-Enter>", function()
  require("toggleterm").send_lines_to_terminal("single_line", true, {})
end, { desc = "Send Line to Terminal", buffer = true })
vim.keymap.set({ "n", "i" }, "<A-Enter>", function()
  require("toggleterm").send_lines_to_terminal("single_line", true, {})
end, { desc = "Send Line to Terminal", buffer = true })

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "/tmp/zsh*",
  callback = function()
    vim.keymap.set({ "n", "i" }, "<A-w>", function()
      vim.cmd.write({ bang = true })
      vim.cmd.bdelete()
    end, { buffer = true })
    vim.keymap.set({ "n", "i" }, "<A-Enter>", function()
      vim.cmd.write({ bang = true })
      vim.cmd.bdelete()
    end, { buffer = true })
    vim.keymap.set({ "n", "i" }, "<C-Enter>", function()
      vim.cmd.write({ bang = true })
      vim.cmd.bdelete()
    end, { buffer = true })
  end,
})
