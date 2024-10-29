return {
  "kevinhwang91/nvim-fundo",
  event = "VeryLazy",
  dependencies = {
    {
      "kevinhwang91/promise-async",
      event = "VeryLazy",
    },
  },
  build = function()
    require("fundo").install()
  end,
}
