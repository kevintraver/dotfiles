return {
  "kevinhwang91/nvim-fundo",
  lazy = true,
  dependencies = { "kevinhwang91/promise-async" },
  build = function()
    require("fundo").install()
  end,
}
