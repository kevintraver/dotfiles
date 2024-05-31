return {
  "folke/edgy.nvim",
  optional = true,
  opts = function(_, opts)
    table.insert(opts.right, {
      ft = "help",
      size = { width = 0.5 },
      filter = function(buf)
        return vim.bo[buf].buftype == "help"
      end,
    })
  end,
}
