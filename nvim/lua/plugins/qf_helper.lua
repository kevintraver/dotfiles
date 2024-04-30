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
      "<C-q>",
      function()
        require("qf_helper").toggle("c")
      end,
      desc = "Quickfix Toggle",
    },
  },
}
