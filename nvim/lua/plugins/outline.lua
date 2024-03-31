return {
  "hedyhli/outline.nvim",
  lazy = true,
  config = true,
  keys = {
    {
      "<A-i>",
      function()
        require("outline").toggle_outline()
      end,
      desc = "Toggle Outline",
    },
  },
}
