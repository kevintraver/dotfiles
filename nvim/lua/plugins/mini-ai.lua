-- https://github.com/echasnovski/mini.ai

return {
  "echasnovski/mini.ai",
  event = "VeryLazy",
  config = function()
    require("mini.ai").setup({
      custom_textobjects = {
        d = { "[%-%.]?%f[%d]%d+" },
      },
    })
  end,
}
