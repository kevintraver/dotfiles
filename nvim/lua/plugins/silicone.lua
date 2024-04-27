return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  opts = {
    font = "Hack",
    to_clipboard = true,
  },
  keys = {
    {
      "<leader>ci",
      function()
        require("silicon").start()
      end,
      desc = "Code Image",
    },
  },
}
