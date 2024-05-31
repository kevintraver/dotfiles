return {
  {
    "hedyhli/outline.nvim",
    lazy = true,
    config = true,
    keys = {
      {
        "<A-i>",
        function()
          require("outline").toggle_outline()
        end,
        desc = "Toggle Outline",
      },
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      opts.right = opts.right or {}
      table.insert(opts.right, {
        title = "Outline",
        ft = "Outline",
        size = { width = 0.4 },
      })
    end,
  },
}
