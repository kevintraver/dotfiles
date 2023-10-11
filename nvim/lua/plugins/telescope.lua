return {
  "nvim-telescope/telescope.nvim",
  event = "VeryLazy",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      event = "VeryLazy",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    {
      "nvim-telescope/telescope-frecency.nvim",
      event = "VeryLazy",
      config = function()
        require("telescope").load_extension("frecency")
      end,
      dependencies = { "kkharji/sqlite.lua" },
    },
    {
      "jvgrootveld/telescope-zoxide",
      event = "VeryLazy",
      config = function()
        require("telescope").load_extension("zoxide")
      end,
    },
    {
      "debugloop/telescope-undo.nvim",
      event = "VeryLazy",
      config = function()
        require("telescope").setup({
          extensions = {
            undo = {
              use_delta = false,
            },
          },
        })
        require("telescope").load_extension("undo")
      end,
    },
    {
      "tsakirist/telescope-lazy.nvim",
      event = "VeryLazy",
      config = function()
        require("telescope").load_extension("lazy")
      end,
    },
    {
      "MaximilianLloyd/adjacent.nvim",
      event = "VeryLazy",
      config = function()
        require("telescope").load_extension("adjacent")
      end,
    },
    {
      "paopaol/telescope-git-diffs.nvim",
      event = "VeryLazy",
      config = function()
        require("telescope").load_extension("git_diffs")
      end,
    },
    {
      "natecraddock/workspaces.nvim",
      event = "VeryLazy",
      config = function()
        require("telescope").load_extension("workspaces")
      end,
    },
    {
      "xiyaowong/telescope-emoji.nvim",
      event = "VeryLazy",
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
      event = "VeryLazy",
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
      "<D-i>",
      mode = { "n", "i" },
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Files",
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
      mode = { "n", "i" },
      function()
        require("telescope").extensions.projects.projects({})
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
      "<leader>fo",
      function()
        require("telescope.builtin").oldfiles()
      end,
      desc = "Recent",
    },
    {
      "<D-S-o>",
      mode = { "n", "i" },
      function()
        require("telescope.builtin").oldfiles()
      end,
      desc = "Recent",
    },
    {
      "<D-u>",
      mode = { "n", "i" },
      function()
        require("telescope").extensions.undo.undo()
      end,
      desc = "Undo",
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
      "<leader>fm",
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
      "<D-y>",
      function()
        require("telescope").extensions.yank_history.yank_history({})
      end,
      desc = "Yank History",
    },
    {
      "<leader>sp",
      function()
        require("telescope").extensions.yank_history.yank_history({})
      end,
      desc = "Yank History",
    },
    {
      "<leader>fl",
      function()
        require("telescope").extensions.lazy.lazy()
      end,
      desc = "Lazy",
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
        require("telescope.builtin").lsp_document_symbols()
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
      "<leader><space>",
      false,
    },
  },
  opts = {
    defaults = {
      mappings = {
        n = {
          ["<D-w>"] = function(...)
            return require("telescope.actions").close(...)
          end,
        },
        i = {
          ["<D-w>"] = function(...)
            return require("telescope.actions").close(...)
          end,
        },
      },
    },
  },
}
