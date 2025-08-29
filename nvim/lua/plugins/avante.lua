return {
  "yetone/avante.nvim",
  enabled = false,
  lazy = true,
  opts = {
    hints = {
      enabled = false,
    },
  },
  build = "make",
  keys = {
    {
      "<D-l>",
      mode = { "n", "v", "i" },
      function()
        require("avante.api").toggle()
      end,
    },
  },
}
