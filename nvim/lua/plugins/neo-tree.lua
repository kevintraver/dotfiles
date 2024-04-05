return {
  "nvim-neo-tree/neo-tree.nvim",
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
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      window = {
        mappings = {
          ["<Esc>"] = "clear_filter",
          ["<A-h>"] = "navigate_up",
          ["<A-f>"] = "filter_on_submit",
          ["]]"] = "next_git_modified",
          ["[["] = "prev_git_modified",
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
    {
      "<A-g>",
      function()
        require("neo-tree.command").execute({
          source = "git_status",
          reveal = true,
          toggle = true,
          reveal_force_cwd = true,
        })
      end,
      desc = "NeoTree (Git)",
    },
    -- disable LazyVim Neo-tree keymaps
    { "<leader>e", false },
    { "<leader>E", false },
    { "<leader>fe", false },
    { "<leader>fE", false },
  },
}
