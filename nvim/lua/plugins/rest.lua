return {
  "rest-nvim/rest.nvim",
  lazy = true,
  commit = "8b62563cfb19ffe939a260504944c5975796a682",
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
