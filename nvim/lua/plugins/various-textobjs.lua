return {
  "chrisgrieser/nvim-various-textobjs",
  opts = {
    useDefaultKeymaps = false,
  },
  keys = {
    {
      "aw",
      mode = { "o", "x" },
      "iw",
    },
    {
      "iw",
      mode = { "o", "x" },
      function()
        require("various-textobjs").subword("inner")
      end,
    },
  },
}
