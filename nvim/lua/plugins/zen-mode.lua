return {
  "folke/zen-mode.nvim",
  lazy = true,
  config = true,
  keys = {
    {
      "<leader>uz",
      function()
        require("zen-mode").toggle()
      end,
      desc = "Toggle Zen Mode",
    },
  },
}
