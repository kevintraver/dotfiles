vim.keymap.set("n", "<leader>cp", function()
  vim.cmd("silent !open -a Marked\\ 2.app '%:p'")
end, { desc = "Markdown Preview", buffer = true })
