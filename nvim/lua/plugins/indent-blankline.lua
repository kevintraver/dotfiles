-- https://github.com/lukas-reineke/indent-blankline.nvim

return {
  "lukas-reineke/indent-blankline.nvim",
  event = "VeryLazy",
  config = function()
    require("ibl").setup()
  end,
}