-- https://github.com/echasnovski/mini.indentscope

return {
  "echasnovski/mini.indentscope",
  event = "VeryLazy",
  config = function()
    local delay_value = vim.g.vscode and 10000000 or 100
    require("mini.indentscope").setup({
      draw = {
        delay = delay_value,
      },
    })
  end,
}
