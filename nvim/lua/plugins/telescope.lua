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
      config = function()
        require("telescope").load_extension("zoxide")
      end,
    },
    {
      "debugloop/telescope-undo.nvim",
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
  },
  keys = {
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
        require("telescope").extensions.frecency.frecency()
      end,
      desc = "Recent",
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
      desc = "branches",
    },
    {
      "<leader>ut",
      function()
        require("telescope.builtin").filetypes()
      end,
      desc = "Filetypes",
    },
    {
      "<leader>fz",
      function()
        require("telescope").extensions.zoxide.list()
      end,
      desc = "zoxide",
    },
    {
      "<D-y>",
      function()
        require("telescope").extensions.yank_history.yank_history({})
      end,
      desc = "Open Yank History",
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
