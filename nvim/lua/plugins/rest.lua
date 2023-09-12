-- https://github.com/rest-nvim/rest.nvim

return {
  "rest-nvim/rest.nvim",
  cond = not vim.g.vscode,
  ft = { "http" },
  keys = {
    {
      "<leader>r",
      function()
        require("rest-nvim").run()
      end,
      { desc = "Send HTTP Request" },
    },
  },
}
