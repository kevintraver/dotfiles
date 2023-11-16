return {
  "folke/zen-mode.nvim",
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
