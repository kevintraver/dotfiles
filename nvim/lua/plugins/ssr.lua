return {
  "cshuaimin/ssr.nvim",
  lazy = true,
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
