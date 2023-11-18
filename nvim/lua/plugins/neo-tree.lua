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
        ["<D-w>"] = "close_window",
        ["<D-h>"] = "navigate_up",
        ["<D-,>"] = "prev_source",
        ["<D-.>"] = "next_source",
        ["<Tab>"] = "prev_source",
        ["<S-Tab>"] = "next_source",
      },
    },
    filesystem = {
      window = {
        mappings = {
          ["<Esc>"] = "clear_filter",
          ["<D-f>"] = "filter_on_submit",
          ["<A-]>"] = "next_git_modified",
          ["<A-[>"] = "prev_git_modified",
          ["<D-]>"] = "next_git_modified",
          ["<D-[>"] = "prev_git_modified",
        },
      },
    },
  },
  keys = {
    {
      "<D-b>",
      function()
        require("neo-tree.command").execute({
          reveal = true,
          toggle = true,
        })
      end,
      desc = "Explorer NeoTree (root dir)",
    },
    {
      "<D-e>",
      function()
        require("neo-tree.command").execute({
          reveal = true,
          toggle = true,
        })
      end,
      desc = "Explorer NeoTree (root dir)",
    },
    -- disable LazyVim Neo-tree keymaps
    { "<leader>e", false },
    { "<leader>E", false },
    { "<leader>fe", false },
    { "<leader>fE", false },
  },
}
