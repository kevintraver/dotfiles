return {
  "toppair/peek.nvim",
  enabled = true,
  lazy = true,
  build = "deno task --quiet build:fast",
  config = true,
  keys = {
    {
      "<leader>pp",
      function()
        require("peek").open()
      end,
    },
  },
}
