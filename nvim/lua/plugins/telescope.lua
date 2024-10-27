return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      mappings = {
        i = {
          ["<A-w>"] = require("telescope.actions").close,
          ["<C-l>"] = require("telescope.actions").file_vsplit,
          ["<A-l>"] = require("telescope.actions").file_vsplit,
          ["<A-o>"] = require("telescope.actions").select_default,
          ["<C-o>"] = require("telescope.actions").select_default,
          ["<C-u>"] = require("telescope.actions").results_scrolling_up,
          ["<C-d>"] = require("telescope.actions").results_scrolling_down,
        },
        n = {
          ["<A-w>"] = require("telescope.actions").close,
          ["<C-l>"] = require("telescope.actions").file_vsplit,
          ["<A-l>"] = require("telescope.actions").file_vsplit,
          ["<A-o>"] = require("telescope.actions").select_default,
          ["<C-o>"] = require("telescope.actions").select_default,
          ["<C-u>"] = require("telescope.actions").results_scrolling_up,
          ["<C-d>"] = require("telescope.actions").results_scrolling_down,
        },
      },
      scroll_strategy = "limit",
    })
  end,
  keys = {
    {
      "<A-S-f>",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Grep",
    },
    {
      "<A-C-f>",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Grep",
    },
    {
      "<A-f>",
      function()
        require("telescope.builtin").current_buffer_fuzzy_find()
      end,
      desc = "Search Buffer",
    },
    {
      "<leader>fo",
      function()
        require("telescope.builtin").oldfiles()
      end,
      desc = "Old Files",
    },
    {
      "<leader>gb",
      function()
        require("telescope.builtin").git_branches()
      end,
      desc = "Git Branches",
    },
    {
      "<leader>ct",
      function()
        require("telescope.builtin").filetypes()
      end,
      desc = "Filetypes",
    },
    {
      "<leader>gs",
      function()
        require("telescope.builtin").git_status()
      end,
      desc = "Git Status",
    },
    {
      "<leader>bb",
      function()
        require("telescope.builtin").buffers({
          sort_mru = true,
          sort_lastused = true,
        })
      end,
      desc = "Switch Buffer",
    },
    {
      "<leader>bf",
      function()
        require("telescope.builtin").buffers({
          sort_mru = true,
          sort_lastused = true,
        })
      end,
      desc = "Switch Buffer",
    },
    {
      "<A-j>",
      function()
        require("telescope.builtin").lsp_document_symbols()
      end,
      desc = "Goto Symbol",
    },
    {
      "<A-S-j>",
      function()
        require("telescope.builtin").lsp_workspace_symbols()
      end,
      desc = "Goto Symbol (Workspace)",
    },
    {
      "<A-C-j>",
      function()
        require("telescope.builtin").lsp_workspace_symbols()
      end,
      desc = "Goto Symbol (Workspace)",
    },
    {
      "<A-r>",
      function()
        require("telescope.builtin").resume()
      end,
      desc = "Resume",
    },
    {
      "<leader>fd",
      function()
        require("telescope.builtin").find_files({
          prompt_title = "Find Dotfiles",
          cwd = "~/.dotfiles",
        })
      end,
      desc = "Find Dotfiles",
    },
    {
      "<leader>gc",
      false,
    },
    {
      "<leader><space>",
      false,
    },
    {
      "<leader>sm",
      false,
    },
    {
      "<leader>fb",
      false,
    },
    {
      "<leader>fr",
      false,
    },
  },
}
