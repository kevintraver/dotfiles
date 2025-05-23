return {
  {
    "sindrets/diffview.nvim",
    lazy = true,
    cmd = {
      "DiffviewOpen",
      "DiffviewFileHistory",
    },
    opts = {
      keymaps = {
        file_panel = {
          ["e"] = function()
            require("diffview.actions").goto_file_edit()
          end,
          ["<C-n>"] = function()
            require("diffview.actions").select_next_entry()
          end,
          ["<C-p>"] = function()
            require("diffview.actions").select_prev_entry()
          end,
          ["q"] = function()
            require("diffview").close()
          end,
          ["<D-d>"] = function()
            require("diffview").close()
          end,
          ["<D-g>"] = function()
            require("diffview").close()
          end,
          ["<D-w>"] = function()
            require("diffview").close()
          end,
          ["x"] = function()
            require("diffview.actions").restore_entry()
          end,
          ["d"] = function()
            require("diffview.actions").restore_entry()
          end,
          ["c"] = function()
            require("tinygit").smartCommit()
          end,
          ["<D-p>"] = function()
            require("tinygit").push({})
          end,
          ["<D-u>"] = function()
            require("tinygit").undoLastCommitOrAmend()
          end,
        },
        view = {
          ["q"] = function()
            require("diffview").close()
          end,
          ["<D-w>"] = function()
            require("diffview").close()
          end,
        },
        file_history_panel = {
          ["q"] = function()
            require("diffview").close()
          end,
          ["<D-w>"] = function()
            require("diffview").close()
          end,
          ["<D-d>"] = function()
            require("diffview.actions").open_in_diffview()
          end,
          ["d"] = function()
            require("diffview.actions").open_in_diffview()
          end,
          ["<D-g>"] = function()
            require("diffview").close()
          end,
          ["gg"] = function()
            require("diffview.actions").select_first_entry()
          end,
          ["G"] = function()
            require("diffview.actions").select_last_entry()
          end,
        },
      },
    },
    keys = {
      {
        "<leader>gll",
        function()
          require("diffview").file_history(nil, {})
        end,
        desc = "Diff View History",
      },
      {
        "<leader>glh",
        function()
          require("diffview").file_history(nil, {})
        end,
        desc = "Diff View History",
      },
      {
        "<leader>glf",
        function()
          require("diffview").file_history(nil, { "%" })
        end,
        desc = "Diff View File History",
      },
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      table.insert(opts.bottom, {
        title = "Diff View File History",
        ft = "DiffviewFileHistory",
        size = { height = 0.4 },
      })
      table.insert(opts.left, { title = "Diff View", ft = "DiffviewFiles" })
    end,
  },
}
