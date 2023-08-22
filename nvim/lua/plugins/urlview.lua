-- https://github.com/axieax/urlview.nvim

return {
  "axieax/urlview.nvim",
  event = "VeryLazy",
  config = function()
    require("urlview").setup()
  end,
}
