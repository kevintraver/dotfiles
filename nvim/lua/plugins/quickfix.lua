return {
  "folke/edgy.nvim",
  optional = true,
  opts = function(_, opts)
    for _, v in ipairs(opts.bottom) do
      if v.ft == "qf" then
        v.size = { height = 0.5 }
        break
      end
    end
  end,
}
