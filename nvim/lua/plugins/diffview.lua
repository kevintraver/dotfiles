return {
  "sindrets/diffview.nvim",
  lazy = true,
  cmd = {
    "DiffviewOpen",
    "DiffviewFileHistory",
  },
  opts = {
    keymaps = {
      file_panel = {
        ["j"] = function()
          require("diffview.actions").select_next_entry()
        end,
        ["k"] = function()
          require("diffview.actions").select_prev_entry()
        end,
        ["q"] = function()
          require("diffview").close()
        end,
        ["<A-w>"] = function()
          require("diffview").close()
        end,
        ["x"] = function()
          require("diffview.actions").restore_entry()
        end,
      },
      view = {
        ["q"] = function()
          require("diffview").close()
        end,
        ["<A-w>"] = function()
          require("diffview").close()
        end,
      },
      file_history_panel = {
        ["e"] = function()
          require("diffview.actions").goto_file_tab()
        end,
        ["q"] = function()
          require("diffview").close()
        end,
        ["<A-w>"] = function()
          require("diffview").close()
        end,
        ["<A-d>"] = function()
          require("diffview.actions").open_in_diffview()
        end,
      },
    },
  },
  keys = {
    {
      "<A-d>",
      function()
        require("diffview").open({})
      end,
      desc = "Diff View Open",
    },
    {
      "<leader>gd",
      function()
        require("diffview").open({})
      end,
      desc = "Diff View Open",
    },
    {
      "<leader>gl",
      function()
        require("diffview").file_history(nil, {})
      end,
      desc = "Diff View History",
    },
    {
      "<leader>gL",
      function()
        require("diffview").file_history(nil, { "%" })
      end,
      desc = "Diff View File History",
    },
  },
}
