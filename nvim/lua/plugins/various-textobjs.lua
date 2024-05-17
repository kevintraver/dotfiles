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
      desc = "Inside Key",
    },
    {
      "ak",
      mode = { "o", "x" },
      function()
        require("various-textobjs").key("outer")
      end,
      desc = "Around Key",
    },
    {
      "iv",
      mode = { "o", "x" },
      function()
        require("various-textobjs").value("inner")
      end,
      desc = "Inside Value",
    },
    {
      "av",
      mode = { "o", "x" },
      function()
        require("various-textobjs").value("outer")
      end,
      desc = "Around Value",
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
