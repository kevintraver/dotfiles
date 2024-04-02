return {
  "cshuaimin/ssr.nvim",
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
