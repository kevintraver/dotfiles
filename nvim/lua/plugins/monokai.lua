return {
  "loctvl842/monokai-pro.nvim",
  event = "VeryLazy",
  enabled = false,
  cond = not vim.g.vscode,
  config = function()
    require("monokai-pro").setup()
  end,
}
