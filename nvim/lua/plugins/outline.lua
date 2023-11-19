return {
  "hedyhli/outline.nvim",
  event = "VeryLazy",
  config = {
    keymaps = {
      close = { "q" },
    },
  },
  keys = {
    {
      "<D-i>",
      function()
        require("outline").toggle_outline()
      end,
      desc = "Toggle outline",
    },
  },
}
