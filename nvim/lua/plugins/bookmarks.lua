return {
  "tomasky/bookmarks.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").load_extension("bookmarks")
    end,
  },
  opts = {
    sign_priority = 8,
    signs = {
      add = { hl = "BookMarksAdd", text = "🏷️", numhl = "BookMarksAddNr", linehl = "BookMarksAddLn" },
      ann = { hl = "BookMarksAnn", text = "📝", numhl = "BookMarksAnnNr", linehl = "BookMarksAnnLn" },
    },
  },
  keys = {
    {
      "ma",
      function()
        require("bookmarks").bookmark_ann()
      end,
      desc = "Annotate",
    },
    {
      "mm",
      function()
        require("bookmarks").bookmark_toggle()
      end,
      desc = "Toggle",
    },
    {
      "<D-m>",
      function()
        require("bookmarks").bookmark_next()
      end,
      desc = "Next",
    },
    {
      "<S-D-m>",
      function()
        require("bookmarks").bookmark_prev()
      end,
      desc = "Next",
    },
    {
      "md",
      function()
        require("bookmarks").bookmark_clean()
      end,
      desc = "Clean (buffer)",
    },
    {
      "mq",
      function()
        require("bookmarks").bookmark_list()
      end,
      desc = "List (quickfix)",
    },
    {
      "ms",
      function()
        require("telescope").extensions.bookmarks.list({})
      end,
      desc = "Telescope",
    },
  },
}
