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
        "<A-i>",
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
      for _, v in ipairs(opts.right) do
        if v.ft == "Outline" then
          v.pinned = false
          v.size = { width = 0.3 }
          break
        end
      end
    end,
  },
}
