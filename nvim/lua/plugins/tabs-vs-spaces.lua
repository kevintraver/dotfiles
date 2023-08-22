-- https://github.com/tenxsoydev/tabs-vs-spaces.nvim

return {
  "tenxsoydev/tabs-vs-spaces.nvim",
  event = "VeryLazy",
  cond = not vim.g.vscode,
  config = function()
    require("tabs-vs-spaces").setup()
  end,
}
