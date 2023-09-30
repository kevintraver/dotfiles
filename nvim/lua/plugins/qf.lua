-- https://github.com/ten3roberts/qf.nvim

return {
  "ten3roberts/qf.nvim",
  cond = not vim.g.vscode,
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<leader>qt",
      function()
        require("qf").toggle("c")
      end,
      desc = "Quickfix Toggle",
    },
  },
}
