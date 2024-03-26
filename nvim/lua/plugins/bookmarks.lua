return {
  "tomasky/bookmarks.nvim",
  dev = true,
  event = "VeryLazy",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").load_extension("bookmarks")
    end,
  },
  opts = {
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
      "md",
      function()
        require("bookmarks").bookmark_clean()
      end,
      desc = "Clean (buffer)",
    },
    {
      "mn",
      function()
        require("bookmarks").bookmark_next()
      end,
      desc = "Jump to Next Bookmark",
    },
    {
      "mp",
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
      desc = "List (quickfix)",
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
