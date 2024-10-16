return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  opts = {
    provider = "openai",
    hints = {
      enabled = false,
    },
  },
  build = "make",
  keys = {
    {
      "<A-\\>",
      function()
        require("avante.api").ask()
      end,
    },
  },
}
