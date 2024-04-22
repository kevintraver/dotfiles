return {
  "nvim-focus/focus.nvim",
  lazy = true,
  opts = {
    autoresize = {
      minwidth = 40,
      minheight = 40,
    },
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
  },
}
