return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<D-h>",
      function()
        require("oil").open()
      end,
      desc = "Open Oil",
    },
  },
}
