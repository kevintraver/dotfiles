-- https://github.com/tomasky/bookmarks.nvim

return {
  "crusj/bookmarks.nvim",
  cond = not vim.g.vscode,
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-web-devicons",
  },
  config = function()
    require("bookmarks").setup()
  end,
  keys = { { "<tab><tab>", mode = { "n" } } },
}
