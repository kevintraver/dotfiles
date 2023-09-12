-- https://github.com/folke/trouble.nvim

return {
  "folke/trouble.nvim",
  cond = not vim.g.vscode,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "<leader>xx",
      function()
        require("trouble").open()
      end,
      desc = "Trouble open",
    },
    {
      "<leader>xw",
      function()
        require("trouble").open("workspace_diagnostics")
      end,
      desc = "Trouble open workspace diagnostics",
    },
    {
      "<leader>xd",
      function()
        require("trouble").open("document_diagnostics")
      end,
      desc = "Trouble Open document diagnostics",
    },
    {
      "<leader>xq",
      function()
        require("trouble").open("quickfix")
      end,
      desc = "Trouble Open quickfix",
    },
    {
      "<leader>xl",
      function()
        require("trouble").open("loclist")
      end,
      desc = "Trouble Open location list",
    },
  },
}
