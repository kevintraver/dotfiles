return {
  {
    "davidmh/cspell.nvim",
    event = "VeryLazy",
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      table.insert(
        opts.sources,
        require("cspell").diagnostics.with({
          diagnostics_postprocess = function(diagnostic)
            diagnostic.severity = vim.diagnostic.severity["WARN"]
          end,
        })
      )
      table.insert(opts.sources, require("cspell").code_actions)
    end,
  },
}
