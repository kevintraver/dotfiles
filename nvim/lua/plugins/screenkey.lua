return {
  "NStefan002/screenkey.nvim",
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
