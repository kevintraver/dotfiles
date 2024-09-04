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
