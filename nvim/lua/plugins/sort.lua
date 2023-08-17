-- https://github.com/sQVe/sort.nvim

return {
  "sQVe/sort.nvim",
  event = "VeryLazy",
  config = function()
    require("sort").setup()
  end,
}
