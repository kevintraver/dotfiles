return {
  "dnlhc/glance.nvim",
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
  },
}
