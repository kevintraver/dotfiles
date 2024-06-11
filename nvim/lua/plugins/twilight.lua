return {
  "folke/twilight.nvim",
  lazy = true,
  config = true,
  keys = {
    {
      "<leader>uZ",
      function()
        require("twilight").toggle()
      end,
      desc = "Toggle Twilight Mode",
    },
  },
}
