-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "main",
  event = "VeryLazy",
  cmd = "Neotree",
  cond = not vim.g.vscode,
  opts = {
    window = {
      mappings = {
        ["s"] = "",
        ["l"] = "open",
        ["L"] = "focus_preview",
        ["h"] = "close_node",
        ["<D-w>"] = "close_window",
        ["<D-,>"] = "prev_source",
        ["<D-.>"] = "next_source",
        ["<Tab>"] = "prev_source",
        ["<S-Tab>"] = "next_source",
        ["Y"] = "copy_selector",
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
    commands = {
      copy_selector = function(state)
        local node = state.tree:get_node()
        local filepath = node:get_id()
        local filename = node.name
        local modify = vim.fn.fnamemodify

        local vals = {
          ["BASENAME"] = modify(filename, ":r"),
          ["EXTENSION"] = modify(filename, ":e"),
          ["FILENAME"] = filename,
          ["PATH (CWD)"] = modify(filepath, ":."),
          ["PATH (HOME)"] = modify(filepath, ":~"),
          ["PATH"] = filepath,
          ["URI"] = vim.uri_from_fname(filepath),
        }

        local options = vim.tbl_filter(function(val)
          return vals[val] ~= ""
        end, vim.tbl_keys(vals))
        if vim.tbl_isempty(options) then
          return
        end
        table.sort(options)
        vim.ui.select(options, {
          prompt = "Choose to copy to clipboard:",
          format_item = function(item)
            return ("%s: %s"):format(item, vals[item])
          end,
        }, function(choice)
          local result = vals[choice]
          if result then
            vim.fn.setreg('"', result)
          end
        end)
      end,
    },
  },

  keys = {
    {
      "<D-b>",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
      end,
      desc = "Explorer NeoTree (root dir)",
    },

    {
      "<D-e>",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
      end,
      desc = "Explorer NeoTree (root dir)",
    },
    {
      "<D-S-e>",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
  },
}
