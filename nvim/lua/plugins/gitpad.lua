return {
  "yujinyuz/gitpad.nvim",
  enabled = false,
  lazy = true,
  config = true,
  keys = {
    {
      "<leader>np",
      function()
        require("gitpad").toggle_gitpad()
      end,
      desc = "Project Note",
    },
    {
      "<leader>nb",
      function()
        require("gitpad").toggle_gitpad_branch()
      end,
      desc = "Branch Note",
    },
    {
      "<leader>nd",
      function()
        local date_filename = "daily-" .. os.date("%Y-%m-%d.md")
        require("gitpad").toggle_gitpad({ filename = date_filename })
      end,
      desc = "Daily Note",
    },
    {
      "<leader>nf",
      function()
        local filename = vim.fn.expand("%:p")
        if filename == "" then
          vim.notify("empty bufname")
          return
        end
        filename = vim.fn.pathshorten(filename, 2) .. ".md"
        require("gitpad").toggle_gitpad({ filename = filename })
      end,
      desc = "Per File Notes",
    },
  },
}
