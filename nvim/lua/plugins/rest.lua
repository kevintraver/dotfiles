-- https://github.com/rest-nvim/rest.nvim

return {
  "rest-nvim/rest.nvim",
  event = "VeryLazy",
  cond = not vim.g.vscode,
  ft = "http",
  keys = {
    {
      "<C-Enter>",
      function()
        require("rest-nvim").run()
      end,
      { desc = "Send HTTP Request" },
    },
  },
}
