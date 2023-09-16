-- https://github.com/chrisgrieser/nvim-various-textobjs

return {
  "chrisgrieser/nvim-various-textobjs",
  event = "VeryLazy",
  opts = {
    useDefaultKeymaps = false,
  },

  keys = {
    {
      "iS",
      mode = { "o", "x" },
      function()
        require("various-textobjs").subword("inner")
      end,
    },
    {
      "aS",
      mode = { "o", "x" },
      function()
        require("various-textobjs").subword("outer")
      end,
    },
    {
      "ii",
      mode = { "o", "x" },
      function()
        require("various-textobjs").indentation("inner", "inner")
      end,
    },
    {
      "ai",
      mode = { "o", "x" },
      function()
        require("various-textobjs").indentation("outer", "outer")
      end,
    },
    {
      "iI",
      mode = { "o", "x" },
      function()
        require("various-textobjs").indentation("inner", "outer")
      end,
    },
    {
      "aI",
      mode = { "o", "x" },
      function()
        require("various-textobjs").indentation("outer", "outer")
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
  },
}
