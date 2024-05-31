return {
  {
    "folke/noice.nvim",
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      opts.bottom = opts.bottom or {}
      table.insert(opts.bottom, {
        ft = "noice",
        size = { height = 0.4 },
        filter = function(_, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      })
    end,
  },
}
