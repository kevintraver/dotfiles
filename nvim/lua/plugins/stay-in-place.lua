-- https://github.com/gbprod/stay-in-place.nvim

return {
  "gbprod/stay-in-place.nvim",
  event = "VeryLazy",
  config = function()
    require("stay-in-place").setup()
  end,
}
