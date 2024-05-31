return {
  {
    "nvim-neotest/neotest",
    keys = {
      {
        "<leader>tw",
        function()
          require("neotest").watch.toggle(vim.fn.expand("%"))
        end,
        desc = "Watch File",
      },
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      table.insert(opts.bottom, {
        ft = "neotest-output-panel",
        title = "Neotest Output",
      })
      table.insert(opts.left, {
        title = "Neotest Summary",
        ft = "neotest-summary",
      })
    end,
  },
}
