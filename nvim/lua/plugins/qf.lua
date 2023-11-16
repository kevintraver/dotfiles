return {
  "ten3roberts/qf.nvim",
  lazy = true,
  config = true,
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
