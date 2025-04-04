return {
  {
    "hedyhli/outline.nvim",
    lazy = true,
    opts = {
      keymaps = {
        down_and_jump = { "<C-n>", "J" },
        up_and_jump = { "<C-p>", "K" },
        toggle_preview = "<S-p>",
      },
    },
    keys = {
      {
        "<D-i>",
        function()
          require("outline").toggle_outline()
        end,
        desc = "Toggle Outline",
      },
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      table.insert(opts.right, {
        title = "Outline",
        ft = "Outline",
        size = { width = 0.3 },
      })
    end,
  },
}
