return {
  "cshuaimin/ssr.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>rt",
      mode = { "n" },
      function()
        require("ssr").open()
      end,
      desc = "Treesitter Replace",
    },
  },
}
