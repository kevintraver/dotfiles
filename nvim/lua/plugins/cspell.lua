return {
  "nvimtools/none-ls.nvim",
  event = "VeryLazy",
  enabled = true,
  dependencies = {
    {
      "davidmh/cspell.nvim",
      event = "VeryLazy",
    },
  },
  opts = function(_, opts)
    local cspell = require("cspell")
    opts.sources = opts.sources or {}
    table.insert(
      opts.sources,
      cspell.diagnostics.with({
        diagnostics_postprocess = function(diagnostic)
          diagnostic.severity = vim.diagnostic.severity.WARN
        end,
      })
    )
    table.insert(opts.sources, cspell.code_actions)
  end,
}
