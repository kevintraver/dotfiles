return {
  "dnlhc/glance.nvim",
  cmd = "Glance",
  config = function()
    require("glance").setup({
      mappings = {
        list = {
          ["jk"] = require("glance").actions.close,
        },
      },
    })
  end,
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
