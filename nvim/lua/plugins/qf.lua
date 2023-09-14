-- https://github.com/ten3roberts/qf.nvim

return {
  "ten3roberts/qf.nvim",
  cond = not vim.g.vscode,
  opts = {},
  keys = {
    {
      "<leader>lo",
      function()
        require("qf").open("l")
      end,
      desc = "Open location List",
    },
    {
      "<leader>lc",
      function()
        require("qf").close("l")
      end,
      desc = "Close location List",
    },
    {
      "<leader>ll",
      function()
        require("qf").toggle("l")
      end,
      desc = "Toggle location List",
    },
    {
      "<leader>co",
      function()
        require("qf").open("c")
      end,
      desc = "Open quickfix list",
    },
    {
      "<leader>cc",
      function()
        require("qf").close("c")
      end,
      desc = "Close quickfix list",
    },
    {
      "<leader>cl",
      function()
        require("qf").close("c")
      end,
      desc = "Quickfix Toggle",
    },
    {
      "<leader>j",
      function()
        require("qf").below("l")
      end,
      desc = "Location list next",
    },
    {
      "<leader>k",
      function()
        require("qf").above("l")
      end,
      desc = "Location list previous",
    },
    {
      "<leader>J",
      function()
        require("qf").below("c")
      end,
      desc = "Quickfix next",
    },
    {
      "<leader>K",
      function()
        require("qf").above("c")
      end,
      desc = "Quickfix previous",
    },
  },
}
