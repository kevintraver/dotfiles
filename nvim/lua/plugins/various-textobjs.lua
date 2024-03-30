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
      "iw",
    },
    {
      "is",
      mode = { "o", "x" },
      function()
        require("various-textobjs").subword("inner")
      end,
    },
  },
}
