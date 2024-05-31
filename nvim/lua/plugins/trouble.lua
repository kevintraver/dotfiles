return {
  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    opts = {
      auto_preview = false,
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      opts.bottom = opts.bottom or {}
      table.insert(opts.bottom, {
        ft = "trouble",
        title = "Trouble",
        size = { height = 0.3 },
      })
    end,
  },
}
