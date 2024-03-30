return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "main",
  cmd = "Neotree",
  opts = {
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
      window = {
        mappings = {
          ["<Esc>"] = "clear_filter",
          ["<A-h>"] = "navigate_up",
          ["<A-f>"] = "filter_on_submit",
          ["<A-]>"] = "next_git_modified",
          ["<A-[>"] = "prev_git_modified",
          ["<C-]>"] = "next_git_modified",
          ["<C-[>"] = "prev_git_modified",
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
        })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
    {
      "<A-e>",
      function()
        require("neo-tree.command").execute({
          reveal = true,
          toggle = true,
        })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
    -- disable LazyVim Neo-tree keymaps
    { "<leader>e", false },
    { "<leader>E", false },
    { "<leader>fe", false },
    { "<leader>fE", false },
    { "<leader>ge", false },
  },
}
