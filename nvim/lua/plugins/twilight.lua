return {
  "folke/twilight.nvim",
  lazy = true,
  config = true,
  keys = {
    {
      "<leader>wt",
      function()
        require("twilight").toggle()
      end,
      desc = "Toggle Twilight Mode",
    },
  },
}
