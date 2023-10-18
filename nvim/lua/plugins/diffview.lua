return {
  "sindrets/diffview.nvim",
  event = "VeryLazy",

  opts = {
    keymaps = {
      file_panel = {
        ["q"] = function()
          require("diffview").close()
        end,
        ["<D-w>"] = function()
          require("diffview").close()
        end,
        ["<D-d>"] = function()
          require("diffview").close()
        end,
      },
      view = {
        ["q"] = function()
          require("diffview").close()
        end,
        ["<D-w>"] = function()
          require("diffview").close()
        end,
        ["<D-d>"] = function()
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
        ["<D-w>"] = function()
          require("diffview").close()
        end,
        ["<D-d>"] = function()
          require("diffview").close()
        end,
      },
    },
  },

  keys = {
    {
      "<D-d>",
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
      "<leader>gf",
      function()
        require("diffview").file_history(nil, { "%" })
      end,
      desc = "Diff View File History",
    },
  },
}
