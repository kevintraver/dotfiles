return {
  {

    "jiaoshijie/undotree",
    lazy = true,
    opts = {
      float_diff = false,
      keymaps = {
        ["<tab>"] = "move_next",
        ["k"] = "move_prev",
        ["<D-w>"] = "quit",
      },
    },
    keys = {
      {
        "<D-u>",
        function()
          require("undotree").toggle()
        end,
      },
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      table.insert(opts.left, {
        ft = "undotree",
        title = "Undotree",
        size = { width = 0.3 },
      })
      table.insert(opts.bottom, {
        ft = "undotreeDiff",
        title = "Undotree Diff",
        size = { height = 0.3 },
      })
    end,
  },
}
