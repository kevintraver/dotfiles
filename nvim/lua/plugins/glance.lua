return {
  "dnlhc/glance.nvim",
  cmd = "Glance",
  enabled = false,
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
}
