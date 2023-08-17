-- https://github.com/echasnovski/mini.ai

return {
  "echasnovski/mini.ai",
  event = "VeryLazy",
  config = function()
    require("mini.ai").setup()
  end,
}
