return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  opts = {
    bottom = {
      {
        ft = "noice",
        size = { height = 0.4 },
        filter = function(buf, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      },
      {
        ft = "lazyterm",
        title = "LazyTerm",
        size = { height = 0.4 },
        filter = function(buf)
          return not vim.b[buf].lazyterm_cmd
        end,
      },
      "Trouble",
      { ft = "qf", title = "QuickFix" },
      {
        ft = "help",
        size = { height = 20 },
        -- don't open help files in edgy that we're editing
        filter = function(buf)
          return vim.bo[buf].buftype == "help"
        end,
      },
      { title = "Spectre", ft = "spectre_panel", size = { height = 0.4 } },
      { title = "Diff View File History", ft = "DiffviewFileHistory", size = { height = 0.3 } },
    },
    right = {
      {
        ft = "toggleterm",
        title = "Terminal",
        size = { width = 0.4 },
        filter = function(buf, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      },
      { title = "Neotest Summary", ft = "neotest-summary" },
      { title = "Neotest Output", ft = "neotest-output-panel", size = { height = 15 } },
      {
        title = "Aerial",
        ft = "aerial",
      },
    },
    left = {
      { title = "Diff View", ft = "DiffviewFiles" },
      {
        title = "Neo-Tree",
        ft = "neo-tree",
        filter = function(buf)
          return vim.b[buf].neo_tree_source == "filesystem"
        end,
        open = function()
          vim.api.nvim_input("<esc><space>e")
        end,
        size = { height = 0.5 },
      },
      {
        title = "Neo-Tree Git",
        ft = "neo-tree",
        filter = function(buf)
          return vim.b[buf].neo_tree_source == "git_status"
        end,
        open = "Neotree position=right git_status",
      },
      {
        title = "Neo-Tree Buffers",
        ft = "neo-tree",
        filter = function(buf)
          return vim.b[buf].neo_tree_source == "buffers"
        end,
        open = "Neotree position=top buffers",
      },
      "neo-tree",
    },
    animate = {
      enabled = false,
    },
  },
}
