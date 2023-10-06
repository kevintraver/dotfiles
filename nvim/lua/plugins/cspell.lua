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

      local none_ls = require("null-ls")
      local cspell_check_enabled = true
      vim.keymap.set("n", "<leader>us", function()
        if cspell_check_enabled then
          none_ls.disable({ name = "cspell" })
          cspell_check_enabled = false
        else
          none_ls.enable({ name = "cspell" })
          cspell_check_enabled = true
        end
      end, { desc = "Toggle CSpell", noremap = true })
    end,
  },
  keys = {
    "<leader>us",
    desc = "Toggle CSpell",
  },
}
