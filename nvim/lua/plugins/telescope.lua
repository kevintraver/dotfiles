-- https://github.com/nvim-telescope/telescope.nvim

local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  event = "VeryLazy",
  cond = not vim.g.vscode,
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
      Util.telescope("files", { cwd = false }),
      desc = "Files",
    },
    {
      "<D-f>",
      mode = { "n", "i" },
      Util.telescope("live_grep"),
      desc = "Grep (root dir)",
    },
    {
      "<D-p>",
      mode = { "n", "i" },
      function()
        require("telescope").extensions.projects.projects({})
      end,
      desc = "Open Projects",
    },
    {
      "<leader>fo",
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
      desc = "Open Yank History",
    },
    {
      "<leader>fl",
      function()
        require("telescope").extensions.lazy.lazy()
      end,
      desc = "Lazy",
    },
    {
      "<leader>gl",
      function()
        require("telescope").extensions.git_diffs.diff_commits()
      end,
      desc = "Git Diff Commits",
    },
    {
      "<leader>fs",
      Util.telescope("lsp_document_symbols", {
        symbols = {
          "Class",
          "Function",
          "Method",
          "Constructor",
          "Interface",
          "Module",
          "Struct",
          "Trait",
          "Field",
          "Property",
        },
      }),
      desc = "Goto Symbol",
    },
    {
      "<leader><space>",
      false,
    },
  },
  opts = {
    defaults = {
      file_ignore_patterns = {
        "private/tmp",
      },
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
