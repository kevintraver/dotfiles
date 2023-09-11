-- https://github.com/nvim-telescope/telescope.nvim

local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
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
  },
  keys = {
    { "<D-o>", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
    { "<D-f>", Util.telescope("live_grep"), desc = "Grep (root dir)" },
    { "<D-p>", "<cmd>Telescope commands<cr>", desc = "Commands" },
    { "<leader>gl", "<cmd>Telescope git_commits<CR>", desc = "commits" },
    { "<leader>gh", "<cmd>Telescope git_bcommits<CR>", desc = "commits" },
    { "<leader>gb", "<cmd>Telescope git_branches<CR>", desc = "branches" },
    { "<D-S-o>", "<Cmd>Telescope projects<CR>", desc = "Projects" },
    {
      "<D-t>",
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
}
