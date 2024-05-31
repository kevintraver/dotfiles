return {
  "folke/edgy.nvim",
  optional = true,
  opts = function(_, opts)
    table.insert(opts.bottom, {
      ft = "qf",
      title = "QuickFix",
      height = 0.5,
    })
  end,
}
