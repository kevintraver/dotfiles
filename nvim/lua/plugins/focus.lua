return {
  "nvim-focus/focus.nvim",
  lazy = true,
  opts = {
    split = {
      bufnew = true,
    },
  },
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
