return {
  "LazyVim/LazyVim",
  dependencies = {
    "tsakirist/telescope-lazy.nvim",
    lazy = true,
    config = function()
      require("telescope").setup({
        extensions = {
          lazy = {
            actions_opts = {
              open_in_browser = {
                auto_close = true,
              },
            },
            mappings = {
              open_in_live_grep = "<C-s>",
            },
          },
        },
      })
      require("telescope").load_extension("lazy")
    end,
  },
  keys = {
    {
      "<leader>fp",
      function()
        require("telescope").extensions.lazy.lazy()
      end,
      desc = "Find Lazy Plugin",
    },
    {
      "<leader>fl",
      function()
        require("telescope").extensions.lazy.lazy()
      end,
      desc = "Find Lazy Plugin",
    },
    {
      "<leader>lp",
      function()
        require("telescope").extensions.lazy.lazy()
      end,
      desc = "Find Lazy Plugin",
    },
    {
      "<leader>ls",
      function()
        require("telescope.builtin").live_grep({
          prompt_title = "Grep LazyVim config",
          cwd = vim.fn.stdpath("data") .. "/lazy/LazyVim",
        })
      end,
      desc = "Search (grep) LazyVim",
    },
    {
      "<leader>le",
      function()
        require("oil").open(vim.fn.stdpath("config") .. "/lua/plugins")
      end,
      desc = "Edit Lazy Config Folder",
    },
    {
      "<leader>lu",
      function()
        require("lazy").update()
      end,
      desc = "Lazy Update",
    },
    {
      "<leader>lc",
      function()
        require("telescope.builtin").find_files({
          prompt_title = "Find nvim Config",
          cwd = vim.fn.stdpath("config"),
        })
      end,
      desc = "Lazy Config",
    },
    {
      "<leader>ll",
      function()
        require("lazy.view").show("home")
      end,
      desc = "Lazy Home",
    },
    {
      "<leader><tab>x",
      function()
        vim.cmd.tabonly()
      end,
      desc = "Close Other Tabs",
    },
  },
}
