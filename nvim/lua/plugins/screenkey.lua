return {
  "NStefan002/screenkey.nvim",
  lazy = true,
  cmd = "Screenkey",
  config = true,
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
