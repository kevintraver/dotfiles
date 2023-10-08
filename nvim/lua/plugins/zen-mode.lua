return {
  "folke/zen-mode.nvim",
  event = "VeryLazy",
  config = true,
  keys = {
    {
      "<leader>wz",
      function()
        require("zen-mode").toggle({
          window = {
            width = 0.85, -- width will be 85% of the editor width
          },
        })
      end,
      desc = "Toggle Zen Mode",
    },
  },
}
