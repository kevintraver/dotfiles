-- https://github.com/johmsalas/text-case.nvim

return {
  "johmsalas/text-case.nvim",
  event = "VeryLazy",
  config = function()
    require("textcase").setup()
  end,
}
