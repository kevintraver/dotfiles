return {
  "ten3roberts/qf.nvim",
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
