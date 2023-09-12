-- https://github.com/tenxsoydev/tabs-vs-spaces.nvim

return {
  "tenxsoydev/tabs-vs-spaces.nvim",
  cond = not vim.g.vscode,
  event = "VeryLazy",
  opts = {},
}
