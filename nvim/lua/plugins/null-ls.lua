-- https://github.com/jose-elias-alvarez/null-ls.nvim

return {
  "jose-elias-alvarez/null-ls.nvim",
  cond = not vim.g.vscode,
  opts = function(_, opts)
    local nls = require("null-ls")
    table.insert(opts.sources, nls.builtins.formatting.prettierd)
    table.insert(opts.sources, require("typescript.extensions.null-ls.code-actions"))
    table.insert(opts.sources, require("cspell").diagnostics)
    table.insert(opts.sources, require("cspell").code_actions)
  end,
}
