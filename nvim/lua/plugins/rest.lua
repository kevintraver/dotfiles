return {
  "rest-nvim/rest.nvim",
  commit = "8b62563cfb19ffe939a260504944c5975796a682",
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
