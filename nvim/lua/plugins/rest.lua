return {
  "rest-nvim/rest.nvim",
  lazy = true,
  ft = "http",
  name = "rest-nvim",
  config = true,
  keys = {
    {
      "<C-Enter>",
      desc = "Send HTTP Request",
    },
    {
      "<A-Enter>",
      desc = "Send HTTP Request",
    },
  },
}
