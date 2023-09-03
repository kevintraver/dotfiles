-- https://github.com/sindrets/diffview.nvim

return {
  "sindrets/diffview.nvim",
  event = "VeryLazy",
  cond = not vim.g.vscode,
  config = function()
    require("diffview").setup()
  end,
}
