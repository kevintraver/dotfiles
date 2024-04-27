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
    {
      "ik",
      mode = { "o", "x" },
      function()
        require("various-textobjs").key("inner")
      end,
      desc = "Url",
    },
    {
      "ak",
      mode = { "o", "x" },
      function()
        require("various-textobjs").key("outer")
      end,
      desc = "Url",
    },
    {
      "iv",
      mode = { "o", "x" },
      function()
        require("various-textobjs").value("inner")
      end,
      desc = "Url",
    },
    {
      "av",
      mode = { "o", "x" },
      function()
        require("various-textobjs").value("outer")
      end,
      desc = "Url",
    },
    {
      "u",
      mode = { "o", "x" },
      function()
        require("various-textobjs").url()
      end,
      desc = "Url",
    },
  },
}
