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
  config = function()
    require("null-ls").setup({
      sources = {
        require("cspell").diagnostics.with({
          diagnostics_postprocess = function(diagnostic)
            diagnostic.severity = vim.diagnostic.severity["WARN"]
          end,
        }),
        require("cspell").code_actions,
      },
    })
  end,
}
