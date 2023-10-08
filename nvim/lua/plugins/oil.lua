return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  config = true,
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
