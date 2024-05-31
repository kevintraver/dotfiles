return {
  {

    "nvim-neo-tree/neo-tree.nvim",
    enabled = true,
    branch = "main",
    cmd = "Neotree",
    opts = {
      use_popups_for_input = false,
      window = {
        mappings = {
          ["s"] = "",
          ["l"] = "open",
          ["h"] = "close_node",
          ["<S-p>"] = { "toggle_preview", config = { use_float = true } },
          ["<C-p>"] = { "toggle_preview", config = { use_float = true } },
          ["L"] = "focus_preview",
          ["v"] = "open_vsplit",
          ["<A-w>"] = "close_window",
          ["<Tab>"] = "prev_source",
          ["<S-Tab>"] = "next_source",
        },
      },
      filesystem = {
        follow_current_file = { enabled = true },
        hijack_netrw_behavior = "disabled",
        filtered_items = {
          visible = false,
          hide_dotfiles = true,
          hide_gitignored = true,
        },
        window = {
          mappings = {
            ["<Esc>"] = "clear_filter",
            ["<A-h>"] = "navigate_up",
            ["<A-f>"] = "filter_on_submit",
            ["]h"] = "next_git_modified",
            ["[h"] = "prev_git_modified",
            ["g."] = "toggle_hidden",
          },
        },
      },
    },
    keys = {
      {
        "<A-b>",
        function()
          require("neo-tree.command").execute({
            reveal = true,
            toggle = true,
            reveal_force_cwd = true,
          })
        end,
        desc = "NeoTree (Root Dir)",
      },
      {
        "<A-e>",
        function()
          require("neo-tree.command").execute({
            reveal = true,
            toggle = true,
            reveal_force_cwd = true,
          })
        end,
        desc = "NeoTree (Root Dir)",
      },
      -- disable LazyVim Neo-tree keymaps
      { "<leader>e", false },
      { "<leader>E", false },
      { "<leader>fe", false },
      { "<leader>ge", false },
      { "<leader>fE", false },
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      opts.left = opts.left or {}
      table.insert(opts.left, {
        ft = "neo-tree",
        title = "Neo-Tree",
        filter = function(buf)
          return vim.b[buf].neo_tree_source == "filesystem"
        end,
      })
      table.insert(opts.left, {
        title = "Neo-Tree Git",
        ft = "neo-tree",
        filter = function(buf)
          return vim.b[buf].neo_tree_source == "git_status"
        end,
      })
      table.insert(opts.left, {
        title = "Neo-Tree Buffers",
        ft = "neo-tree",
        filter = function(buf)
          return vim.b[buf].neo_tree_source == "buffers"
        end,
      })
    end,
  },
}
