-- https://github.com/folke/which-key.nvim

return {
  "folke/which-key.nvim",
  cond = not vim.g.vscode,
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {},
}
