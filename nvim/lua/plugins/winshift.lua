return {
  "sindrets/winshift.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>ws",
      function()
        require("winshift").cmd_winshift("swap")
      end,
      desc = "Swap",
    },
  },
}
