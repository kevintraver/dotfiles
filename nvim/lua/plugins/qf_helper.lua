return {
  "stevearc/qf_helper.nvim",
  enabled = true,
  opts = {
    quickfix = {
      default_bindings = false,
    },
  },
  keys = {
    {
      "<leader>q",
      function()
        require("qf_helper").toggle("c")
      end,
      desc = "Quickfix Toggle",
    },
  },
}
