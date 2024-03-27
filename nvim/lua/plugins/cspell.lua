return {
  "nvimtools/none-ls.nvim",
  lazy = true,
  dependencies = {
    "davidmh/cspell.nvim",
  },
  opts = function(_, opts)
    table.insert(opts.sources, require("cspell").code_actions)
  end,
}
