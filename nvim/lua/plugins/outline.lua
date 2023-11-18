return {
  "hedyhli/outline.nvim",
  event = "VeryLazy",
  config = true,
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
