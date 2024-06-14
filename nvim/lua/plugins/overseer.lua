return {
  {
    "stevearc/overseer.nvim",
    lazy = true,
    cmd = {
      "OverseerOpen",
      "OverseerClose",
      "OverseerToggle",
      "OverseerSaveBundle",
      "OverseerLoadBundle",
      "OverseerDeleteBundle",
      "OverseerRunCmd",
      "OverseerRun",
      "OverseerInfo",
      "OverseerBuild",
      "OverseerQuickAction",
      "OverseerTaskAction",
      "OverseerClearCache",
    },
    opts = {
      strategy = {
        "toggleterm",
        direction = "vertical",
      },
    },
    keys = {
      {
        "<leader>or",
        function()
          require("overseer").run_template()
        end,
        desc = "Run Task",
      },
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      table.insert(opts.bottom, {
        ft = "OverseerList",
        title = "Overseer",
        size = { height = 0.4 },
      })
    end,
  },
}
