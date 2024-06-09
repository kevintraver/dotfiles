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
    ui = {
      signcolumn = false,
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
