return {
  "ausgefuchster/quickselect.nvim",
  event = "VeryLazy",
  opts = {
    keymap = {
      {
        mode = { "n" },
        "<C-y>",
        function()
          require("quickselect").quick_yank()
        end,
        desc = "Quick yank",
      },
    },
  },
}
