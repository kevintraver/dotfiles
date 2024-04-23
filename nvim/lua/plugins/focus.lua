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
        require("focus").split_command("l")
      end,
      desc = "Split Nicely",
    },
    {
      "<A-S-l>",
      function()
        require("focus").split_command("l")
      end,
      desc = "Split Nicely",
    },
  },
}
