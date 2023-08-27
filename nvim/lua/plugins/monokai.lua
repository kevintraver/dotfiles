-- https://github.com/loctvl842/monokai-pro.nvim

return {
  "loctvl842/monokai-pro.nvim",
  event = "VeryLazy",
  cond = not vim.g.vscode,
  config = function()
    require("monokai-pro").setup()
  end,
}
