return {
  "cshuaimin/ssr.nvim",
  enabled = false,
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
