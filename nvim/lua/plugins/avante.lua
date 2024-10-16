return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  opts = {
    provider = "openai",
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
