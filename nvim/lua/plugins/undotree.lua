return {
  {

    "jiaoshijie/undotree",
    lazy = true,
    opts = {
      float_diff = false,
      keymaps = {
        ["<tab>"] = "move_next",
        ["k"] = "move_prev",
        ["<A-w>"] = "quit",
      },
    },
    keys = {
      {
        "<A-u>",
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
      opts.left = opts.left or {}
      table.insert(opts.left, {
        ft = "undotree",
        title = "Undotree",
        size = { width = 0.5 },
      })
      opts.bottom = opts.bottom or {}
      table.insert(opts.bottom, {
        ft = "undotreeDiff",
        title = "Undotree Diff",
        size = { height = 0.5 },
      })
    end,
  },
}
