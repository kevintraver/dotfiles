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
      opts.right = opts.right or {}
      table.insert(opts.right, {
        ft = "neotest-output-panel",
        title = "Neotest Output",
        size = { height = 0.4 },
      })
    end,
  },
}
