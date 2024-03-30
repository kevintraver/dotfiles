return {
  "nvim-focus/focus.nvim",
  lazy = true,
  opts = true,
  keys = {
    {
      "<A-l>",
      function()
        require("focus").split_nicely()
      end,
      desc = "Split Nicely",
    },
  },
}
