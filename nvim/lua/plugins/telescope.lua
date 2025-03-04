return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      mappings = {
        i = {
          ["<D-w>"] = require("telescope.actions").close,
          ["<C-l>"] = require("telescope.actions").file_vsplit,
          ["<D-l>"] = require("telescope.actions").file_vsplit,
          ["<D-o>"] = require("telescope.actions").select_default,
          ["<C-o>"] = require("telescope.actions").select_default,
          ["<C-u>"] = require("telescope.actions").results_scrolling_up,
          ["<C-d>"] = require("telescope.actions").results_scrolling_down,
          ["<C-Space>"] = require("telescope.actions").to_fuzzy_refine,
        },
        n = {
          ["<D-w>"] = require("telescope.actions").close,
          ["<C-l>"] = require("telescope.actions").file_vsplit,
          ["<D-l>"] = require("telescope.actions").file_vsplit,
          ["<D-o>"] = require("telescope.actions").select_default,
          ["<C-o>"] = require("telescope.actions").select_default,
          ["<C-u>"] = require("telescope.actions").results_scrolling_up,
          ["<C-d>"] = require("telescope.actions").results_scrolling_down,
          ["<C-Space>"] = require("telescope.actions").to_fuzzy_refine,
        },
      },
      scroll_strategy = "limit",
    })
  end,
  keys = {
    {
      "<D-S-f>",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Grep",
    },
    {
      "<D-C-f>",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Grep",
    },
    {
      "<D-f>",
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
      desc = "Goto Symbol (Workspace)",
    },
    {
      "<D-C-j>",
      function()
        require("telescope.builtin").lsp_workspace_symbols()
      end,
      desc = "Goto Symbol (Workspace)",
    },
    {
      "<D-k>",
      function()
        require("telescope.builtin").lsp_references()
      end,
      desc = "Goto References",
    },
    {
      "<D-r>",
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
