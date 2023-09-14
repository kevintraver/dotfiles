-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  "nvim-neo-tree/neo-tree.nvim",
  cond = not vim.g.vscode,
  opts = {
    window = {
      mappings = {
        ["s"] = "",
        ["l"] = "open",
        ["h"] = "close_node",
        ["<D-,>"] = "prev_source",
        ["<D-.>"] = "next_source",
        ["<Tab>"] = "prev_source",
        ["<S-Tab>"] = "next_source",
        ["<Esc>"] = "clear_filter",
      },
    },
    filesystem = {
      window = {
        mappings = {
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
      "<D-e>",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
      end,
      desc = "Explorer NeoTree (root dir)",
    },
    {
      "<D-E>",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
  },
}
