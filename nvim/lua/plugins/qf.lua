return {
  "ten3roberts/qf.nvim",
  enabled = true,
  config = true,
  keys = {
    {
      "<leader>q",
      function()
        require("qf").toggle("c")
      end,
      desc = "Quickfix Toggle",
    },
  },
}
