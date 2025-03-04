return {
  "yetone/avante.nvim",
  lazy = true,
  opts = {
    hints = {
      enabled = false,
    },
  },
  build = "make",
  keys = {
    {
      "<D-\\>",
      mode = { "n", "v" },
      function()
        require("avante.api").ask()
      end,
    },
  },
}
