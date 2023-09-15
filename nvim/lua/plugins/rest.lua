-- https://github.com/rest-nvim/rest.nvim

return {
  "rest-nvim/rest.nvim",
  event = "VeryLazy",
  cond = not vim.g.vscode,
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
