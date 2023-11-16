return {
  "sindrets/winshift.nvim",
  lazy = true,
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
