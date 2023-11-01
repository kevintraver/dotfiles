return {
  "folke/zen-mode.nvim",
  event = "VeryLazy",
  config = true,
  keys = {
    {
      "<leader>wz",
      function()
        require("zen-mode").toggle()
      end,
      desc = "Toggle Zen Mode",
    },
  },
}
