-- https://github.com/echasnovski/mini.indentscope

return {
  "echasnovski/mini.indentscope",
  event = "VeryLazy",
  config = function()
    require("mini.indentscope").setup()
  end,
}
