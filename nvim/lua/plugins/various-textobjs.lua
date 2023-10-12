return {
  "chrisgrieser/nvim-various-textobjs",
  event = "VeryLazy",
  opts = {
    useDefaultKeymaps = false,
  },

  keys = {
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
