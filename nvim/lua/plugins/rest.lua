return {
  "rest-nvim/rest.nvim",
  lazy = true,
  ft = "http",
  opts = {
    result = {
      formatters = {
        vnd = "jq",
      },
    },
  },
  keys = {
    {
      "<C-Enter>",
      desc = "Send HTTP Request",
    },
    {
      "<D-Enter>",
      desc = "Send HTTP Request",
    },
  },
}
