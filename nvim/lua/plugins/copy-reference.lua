return {
  "cajames/copy-reference.nvim",
  lazy = true,
  keys = {
    {
      "<C-y>",
      function()
        require("copy-reference").copy(false)
      end,
      mode = "n",
      desc = "Copy file path",
    },
    {
      "<C-y>",
      function()
        require("copy-reference").copy(true)
      end,
      mode = "v",
      desc = "Copy file path with line range",
    },
  },
}
