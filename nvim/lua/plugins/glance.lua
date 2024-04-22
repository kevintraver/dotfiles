return {
  "dnlhc/glance.nvim",
  lazy = true,
  cmd = "Glance",
  config = true,
  keys = {
    {
      "<A-k>",
      function()
        require("glance").open("definitions")
      end,
      desc = "Glance Definition",
    },
    {
      "<leader>k",
      function()
        require("glance").open("references")
      end,
      desc = "Glance References",
    },
  },
}
