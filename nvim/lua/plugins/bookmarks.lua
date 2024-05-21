return {
  "tomasky/bookmarks.nvim",
  event = "VeryLazy",
  opts = {
    sign_priority = 200,
    save_file = vim.fn.stdpath("data") .. "/bookmarks.json",
    signs = {
      add = {
        hl = "BookMarksAdd",
        text = "🏷️",
        numhl = "BookMarksAddNr",
        linehl = "BookMarksAddLn",
      },
      ann = {
        hl = "BookMarksAnn",
        text = "📝",
        numhl = "BookMarksAnnNr",
        linehl = "BookMarksAnnLn",
      },
    },
  },
  keys = {
    {
      "ma",
      function()
        require("bookmarks").bookmark_ann()
      end,
      desc = "Bookmark Annotate",
    },
    {
      "mm",
      function()
        require("bookmarks").bookmark_toggle()
      end,
      desc = "Bookmark Toggle",
    },
    {
      "mx",
      function()
        require("bookmarks").bookmark_clean()
      end,
      desc = "Bookmarks Clear Buffer",
    },
    {
      "mX",
      function()
        require("bookmarks").bookmark_clear_all()
      end,
      desc = "Bookmarks Clear All",
    },
    {
      "[m",
      function()
        require("bookmarks").bookmark_next()
      end,
      desc = "Jump to Next Bookmark",
    },
    {
      "]m",
      function()
        require("bookmarks").bookmark_prev()
      end,
      desc = "Jump to Previous Bookmark",
    },
    {
      "mq",
      function()
        require("bookmarks").bookmark_list()
      end,
      desc = "List (Quickfix)",
    },
    {
      "mf",
      function()
        require("telescope").extensions.bookmarks.list({})
      end,
      desc = "Search Bookmarks",
    },
    {
      "ms",
      function()
        require("telescope").extensions.bookmarks.list({})
      end,
      desc = "Search Bookmarks",
    },
    {
      "<leader>sm",
      function()
        require("telescope").extensions.bookmarks.list({})
      end,
      desc = "Search Bookmarks",
    },
    {
      "<A-m>",
      function()
        require("telescope").extensions.bookmarks.list({})
      end,
      desc = "Search Bookmarks",
    },
  },
}
