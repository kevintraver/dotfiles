return {
  "dnlhc/glance.nvim",
  cmd = "Glance",
  opts = function()
    return {
      use_trouble_qf = true,
      mappings = {
        list = {
          ["<A-w>"] = require("glance").actions.close,
        },
      },
    }
  end,
  keys = {
    {
      "<A-j>",
      function()
        require("glance").open("definitions")
      end,
      desc = "Glance Definition",
    },
    {
      "<A-k>",
      function()
        require("glance").open("references")
      end,
      desc = "Glance References",
    },
  },
}
