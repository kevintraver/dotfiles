-- https://github.com/folke/zen-mode.nvim

return {
  "folke/zen-mode.nvim",
  opts = {},
  keys = {
    {
      "<leader>tz",
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
