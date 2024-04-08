vim.keymap.set("n", "<leader>cP", function()
  vim.cmd("silent !open -a Marked\\ 2.app '%:p'")
end, { desc = "Markdown Preview", buffer = true })
