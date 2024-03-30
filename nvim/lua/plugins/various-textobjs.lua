return {
  "chrisgrieser/nvim-various-textobjs",
  lazy = true,
  opts = {
    useDefaultKeymaps = false,
  },
  keys = {
    {
      "as",
      mode = { "o", "x" },
      function()
        require("various-textobjs").subword("outer")
      end,
      desc = "Subword Outer",
    },
    {
      "is",
      mode = { "o", "x" },
      function()
        require("various-textobjs").subword("inner")
      end,
      desc = "Subword Inner",
    },
  },
}
