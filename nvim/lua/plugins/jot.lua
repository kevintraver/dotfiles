return {
  "letieu/jot.lua",
  lazy = true,
  opts = {
    win_opts = {
      split = "right",
      focusable = true,
    },
  },
  keys = {
    {
      "<leader>n",
      function()
        require("jot").toggle()
      end,
      desc = "Jot",
    },
  },
}
