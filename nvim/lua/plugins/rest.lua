return {
  "rest-nvim/rest.nvim",
  lazy = true,
  ft = "http",
  config = function()
    require("rest-nvim").setup({
      result = {
        formatters = {
          vnd = "jq",
        },
      },
    })
  end,
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
