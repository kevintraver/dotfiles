return {
  "toppair/peek.nvim",
  lazy = true,
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
