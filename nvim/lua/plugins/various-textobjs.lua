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
    {
      "u",
      mode = { "o", "x" },
      function()
        require("various-textobjs").url()
      end,
      desc = "Url",
    },
    {
      "au",
      mode = { "o", "x" },
      function()
        require("various-textobjs").url()
      end,
      desc = "Url",
    },
    {
      "iu",
      mode = { "o", "x" },
      function()
        require("various-textobjs").url()
      end,
      desc = "Url",
    },
  },
}
