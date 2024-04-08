return {
  "toppair/peek.nvim",
  event = "VeryLazy",
  build = "deno task --quiet build:fast",
  config = true,
  keys = {
    {
      "<leader>cp",
      function()
        require("peek").open()
      end,
    },
  },
}
