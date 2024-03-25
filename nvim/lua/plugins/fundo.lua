return {
  "kevinhwang91/nvim-fundo",
  dependencies = { "kevinhwang91/promise-async" },
  lazy = true,
  build = function()
    require("fundo").install()
  end,
}
