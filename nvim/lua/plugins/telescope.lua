return {
  "nvim-telescope/telescope.nvim",
  config = true,
  dependencies = {
    {
      "FabianWirth/search.nvim",
      dependencies = { "nvim-telescope/telescope.nvim" },
    },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      lazy = true,
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    {
      "nvim-telescope/telescope-frecency.nvim",
      lazy = true,
      config = function()
        require("telescope").load_extension("frecency")
      end,
      dependencies = { "kkharji/sqlite.lua" },
    },
    {
      "nvim-telescope/telescope-project.nvim",
      lazy = true,
      config = function()
        require("telescope").load_extension("project")
      end,
    },
    {
      "jvgrootveld/telescope-zoxide",
      lazy = true,
      config = function()
        require("telescope").load_extension("zoxide")
      end,
    },
    {
      "tsakirist/telescope-lazy.nvim",
      lazy = true,
      config = function()
        require("telescope").load_extension("lazy")
      end,
    },
    {
      "MaximilianLloyd/adjacent.nvim",
      lazy = true,
      config = function()
        require("telescope").load_extension("adjacent")
      end,
    },
    {
      "paopaol/telescope-git-diffs.nvim",
      lazy = true,
      config = function()
        require("telescope").load_extension("git_diffs")
      end,
    },
    {
      "natecraddock/workspaces.nvim",
      lazy = true,
      config = function()
        require("telescope").load_extension("workspaces")
      end,
    },
    {
      "xiyaowong/telescope-emoji.nvim",
      lazy = true,
      config = function()
        require("telescope").setup({
          extensions = {
            emoji = {
              action = function(emoji)
                vim.fn.setreg('"', emoji.value)
                vim.api.nvim_put({ emoji.value }, "c", false, true)
              end,
            },
          },
        })
        require("telescope").load_extension("emoji")
      end,
    },
    {
      "ghassan0/telescope-glyph.nvim",
      lazy = true,
      config = function()
        require("telescope").setup({
          extensions = {
            glyph = {
              action = function(glyph)
                vim.fn.setreg('"', glyph.value)
                vim.api.nvim_put({ glyph.value }, "c", false, true)
              end,
            },
          },
        })
        require("telescope").load_extension("glyph")
      end,
    },
    {
      "Zane-/cder.nvim",
      lazy = true,
      config = function()
        require("telescope").load_extension("cder")
      end,
    },
  },
  keys = {
    {
      "<leader>fa",
      function()
        require("telescope").extensions.adjacent.adjacent()
      end,
      desc = "Adjacent",
    },
    {
      "<D-o>",
      mode = { "n", "i" },
      function()
        require("telescope").extensions.frecency.frecency()
      end,
      desc = "Recent",
    },
    {
      "<D-S-f>",
      mode = { "n", "i" },
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Grep",
    },
    {
      "<D-f>",
      mode = { "n", "i" },
      function()
        require("telescope.builtin").current_buffer_fuzzy_find()
      end,
      desc = "Search Buffer",
    },
    {
      "<D-p>",
      function()
        require("telescope").extensions.project.project({})
      end,
      desc = "Projects",
    },
    {
      "<leader>fw",
      function()
        require("telescope").extensions.workspaces.workspaces()
      end,
      desc = "Workspaces",
    },
    {
      "<leader>o",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Files",
    },
    {
      "<leader>fo",
      function()
        require("telescope.builtin").oldfiles()
      end,
      desc = "Frecent",
    },
    {
      "<leader>gb",
      function()
        require("telescope.builtin").git_branches()
      end,
      desc = "Branches",
    },
    {
      "<leader>ct",
      function()
        require("telescope.builtin").filetypes()
      end,
      desc = "Filetypes",
    },
    {
      "<leader>sm",
      function()
        require("telescope").extensions.bookmarks.list({})
      end,
      desc = "Bookmarks",
    },
    {
      "<leader>se",
      function()
        require("telescope").extensions.emoji.emoji()
      end,
      desc = "Emoji",
    },
    {
      "<leader>sE",
      function()
        require("telescope").extensions.glyph.glyph()
      end,
      desc = "Glyphs",
    },
    {
      "<leader>fz",
      function()
        require("telescope").extensions.zoxide.list()
      end,
      desc = "Zoxide",
    },
    {
      "<leader>gs",
      function()
        require("telescope.builtin").git_status()
      end,
      desc = "Status",
    },
    {
      "<leader>ls",
      function()
        require("telescope").extensions.lazy.lazy()
      end,
      desc = "Lazy Search Plugin",
    },
    {
      "<leader>lf",
      function()
        require("telescope").extensions.lazy.lazy()
      end,
      desc = "Lazy Find Plugin",
    },
    {
      "<leader>fl",
      function()
        require("telescope").extensions.lazy.lazy()
      end,
      desc = "Find Lazy Plugin",
    },
    {
      "<leader>gL",
      function()
        require("telescope").extensions.git_diffs.diff_commits()
      end,
      desc = "Git Diff Commits",
    },
    {
      "<D-j>",
      function()
        require("telescope.builtin").lsp_document_symbols({
          symbols = require("lazyvim.config").get_kind_filter(),
        })
      end,
      desc = "Goto Symbol",
    },
    {
      "<D-S-j>",
      function()
        require("telescope.builtin").lsp_workspace_symbols()
      end,
      desc = "Goto Symbol (workspace)",
    },
    {
      "<leader>fd",
      function()
        require("telescope").extensions.cder.cder()
      end,
      desc = "Change Directory",
    },
    {
      "<leader>lc",
      function()
        require("telescope.builtin").find_files({
          cwd = vim.fn.stdpath("config"),
        })
      end,
      desc = "Lazy Config Files",
    },
    {
      "<leader>gc",
      false,
    },
    {
      "<leader><space>",
      false,
    },
  },
}
