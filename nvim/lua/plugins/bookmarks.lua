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
      "<leader>ma",
      function()
        require("bookmarks").bookmark_ann()
      end,
      desc = "Annotate",
    },
    {
      "<leader>mm",
      function()
        require("bookmarks").bookmark_toggle()
      end,
      desc = "Toggle",
    },
    {
      "<leader>md",
      function()
        require("bookmarks").bookmark_clean()
      end,
      desc = "Clean (Buffer)",
    },
    {
      "<leader>mn",
      function()
        require("bookmarks").bookmark_next()
      end,
      desc = "Jump to Next Bookmark",
    },
    {
      "<leader>mp",
      function()
        require("bookmarks").bookmark_prev()
      end,
      desc = "Jump to Previous Bookmark",
    },
    {
      "<leader>mq",
      function()
        require("bookmarks").bookmark_list()
      end,
      desc = "List (Quickfix)",
    },
    {
      "<A-m>",
      function()
        require("telescope").extensions.bookmarks.list({})
      end,
      desc = "Telescope",
    },
    {
      "<leader>sm",
      function()
        require("telescope").extensions.bookmarks.list({})
      end,
      desc = "Bookmarks",
    },
  },
}
