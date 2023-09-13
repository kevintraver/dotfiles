-- https://github.com/jose-elias-alvarez/null-ls.nvim

return {
  "jose-elias-alvarez/null-ls.nvim",
  cond = not vim.g.vscode,
  opts = function(_, opts)
    local nls = require("null-ls")
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
}
