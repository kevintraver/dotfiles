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
      "<D-d>",
      function()
        require("focus").split_nicely()
      end,
      desc = "Split Nicely",
    },
    {
      "<leader>wm",
      function()
        require("focus").focus_max_or_equal()
      end,
      desc = "Maximize Toggle",
    },
  },
}
