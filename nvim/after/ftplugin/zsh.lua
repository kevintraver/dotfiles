vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "/tmp/zsh*",
  callback = function()
    vim.keymap.set({ "n", "i" }, "<A-w>", function()
      vim.cmd.write({ bang = true })
      vim.cmd.bdelete()
      require("toggleterm.terminal").Terminal
        :new({
          direction = "horizontal",
          count = 2,
          hidden = true,
        })
        :toggle()
    end, { buffer = true })
    vim.keymap.set({ "n", "i" }, "<A-e>", function()
      vim.cmd.write({ bang = true })
      vim.cmd.bdelete()
      require("toggleterm.terminal").Terminal
        :new({
          direction = "horizontal",
          count = 2,
          hidden = true,
        })
        :toggle()
    end, { buffer = true })
    vim.keymap.set({ "n", "i" }, "<A-Enter>", function()
      vim.cmd.write({ bang = true })
      vim.cmd.bdelete()
      require("toggleterm.terminal").Terminal
        :new({
          direction = "horizontal",
          count = 2,
          hidden = true,
        })
        :toggle()
    end, { buffer = true })
    vim.keymap.set({ "n", "i" }, "<C-Enter>", function()
      vim.cmd.write({ bang = true })
      vim.cmd.bdelete()
      require("toggleterm.terminal").Terminal
        :new({
          direction = "horizontal",
          count = 2,
          hidden = true,
        })
        :toggle()
    end, { buffer = true })
  end,
})
