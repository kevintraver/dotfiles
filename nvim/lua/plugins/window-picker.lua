-- https://github.com/s1n7ax/nvim-window-picker

return {
  "s1n7ax/nvim-window-picker",
  cond = not vim.g.vscode,
  event = "VeryLazy",
  version = "2.*",
}
