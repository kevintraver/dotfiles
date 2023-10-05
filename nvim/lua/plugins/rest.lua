return {
  "rest-nvim/rest.nvim",
  event = "VeryLazy",
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
