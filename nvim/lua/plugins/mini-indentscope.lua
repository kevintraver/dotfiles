-- https://github.com/echasnovski/mini.ai

return {
  "echasnovski/mini.indentscope",
  event = "VeryLazy",
  config = function()
    require("mini.indentscope").setup()
  end,
}
