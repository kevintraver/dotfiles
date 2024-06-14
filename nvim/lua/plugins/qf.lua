return {
  "ten3roberts/qf.nvim",
  event = "VeryLazy",
  enabled = true,
  config = true,
  keys = {
    {
      "<C-q>",
      function()
        require("qf").toggle("c")
      end,
      desc = "Quickfix Toggle",
    },
  },
}
