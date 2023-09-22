-- https://github.com/stevearc/oil.nvim

return {
  "stevearc/oil.nvim",
  opts = {},
  keys = {
    {
      "<leader>oi",
      function()
        require("oil").open()
      end,
      desc = "Open Oil",
    },
  },
}
