return {
  "nvim-focus/focus.nvim",
  lazy = true,
  opts = {
    autoresize = {
      minwidth = 20,
      minheight = 20,
    },
    split = {
      bufnew = false,
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
        require("focus").split_command("l", "", true)
      end,
      desc = "Split Nicely (bufnew)",
    },
  },
}
