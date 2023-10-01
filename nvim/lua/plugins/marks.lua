-- https://github.com/chentoast/marks.nvim

return {
  "chentoast/marks.nvim",
  event = "VeryLazy",
  enabled = false,
  cond = not vim.g.vscode,
  opts = {},
}
