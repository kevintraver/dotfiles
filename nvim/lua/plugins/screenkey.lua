return {
  "NStefan002/screenkey.nvim",
  lazy = true,
  cmd = "Screenkey",
  opts = {
    win_opts = {
      row = vim.o.lines - vim.o.cmdheight - 1,
      col = 2,
      relative = "editor",
      anchor = "SW",
      width = 40,
      height = 3,
      border = "single",
    },
  },
  keys = {
    {
      "<leader>uk",
      function()
        require("screenkey").toggle()
      end,
      desc = "Toggle Screenkey",
    },
  },
}
