-- https://github.com/axieax/urlview.nvim

return {
  "axieax/urlview.nvim",
  cond = not vim.g.vscode,
  event = "VeryLazy",
  opts = {
    default_picker = "telescope",
    default_action = "clipboard",
  },
}
