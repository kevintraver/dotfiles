-- https://github.com/nvim-telescope/telescope.nvim

local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
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
  },
  keys = {
    { "<D-o>", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
    { "<D-f>", Util.telescope("live_grep"), desc = "Grep (root dir)" },
    { "<D-p>", "<cmd>Telescope commands<cr>", desc = "Commands" },
    { "<D-r>", "<cmd>Telescope resume<cr>", desc = "Resume" },
    { "<leader>gb", "<cmd>Telescope git_branches<CR>", desc = "branches" },
    { "<D-S-o>", "<Cmd>Telescope projects<CR>", desc = "Projects" },
    {
      "<leader>ft",
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
