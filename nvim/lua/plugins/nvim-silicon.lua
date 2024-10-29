return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  config = true,
  keys = {
    {
      "<leader>cc",
      mode = { "n", "v" },
      function()
        require("nvim-silicon").clip()
      end,
      desc = "Copy code screenshot to clipboard",
    },
  },
}
