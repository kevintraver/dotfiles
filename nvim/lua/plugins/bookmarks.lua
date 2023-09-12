return {
  "crusj/bookmarks.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-web-devicons",
  },
  config = function()
    require("bookmarks").setup()
  end,
  keys = { { "<tab><tab>", mode = { "n" } } },
}
