return {
  "LazyVim/LazyVim",
  keys = {
    {
      "<leader>fp",
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
        require("telescope").extensions.lazy.lazy()
      end,
      desc = "Find Lazy Plugin",
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
        require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
      end,
      desc = "Lazy Config",
    },
  },
}
