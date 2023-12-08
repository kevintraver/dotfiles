return {
  "folke/twilight.nvim",
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
