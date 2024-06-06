return {
  "LazyVim/LazyVim",
  version = false,
  keys = {
    {
      "<leader>lc",
      function()
        require("telescope.builtin").live_grep({
          prompt_title = "Grep LazyVim config",
          cwd = vim.fn.stdpath("data") .. "/lazy/LazyVim",
        })
      end,
      desc = "Search (grep) LazyVim",
    },
    {
      "<leader>lg",
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
      "<leader>lf",
      function()
        require("telescope.builtin").find_files({
          prompt_title = "Find nvim Config",
          cwd = vim.fn.stdpath("data") .. "/lazy/LazyVim",
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
