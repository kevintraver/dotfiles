return {
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "monokai-nightasty",
  },
  version = false,
  keys = {
    {
      "<leader>lh",
      function()
        require("lazy.view").show("home")
      end,
      desc = "Lazy Home",
    },
    {
      "<leader>ll",
      function()
        require("lazy.manage").log()
      end,
      desc = "Lazy Log",
    },
    {
      "<leader>lu",
      function()
        require("lazy").update()
      end,
      desc = "Lazy Update",
    },
    {
      "<leader>lg",
      function()
        require("telescope.builtin").live_grep({
          prompt_title = "Grep Dotfiles",
          cwd = "~/.dotfiles",
        })
      end,
      desc = "Search (grep) Dotfiles",
    },
    {
      "<leader>ls",
      function()
        require("telescope.builtin").live_grep({
          prompt_title = "Grep Dotfiles",
          cwd = "~/.dotfiles",
        })
      end,
      desc = "Search (grep) Dotfiles",
    },
    {
      "<leader>lG",
      function()
        require("telescope.builtin").live_grep({
          prompt_title = "Grep LazyVim config",
          cwd = vim.fn.stdpath("data") .. "/lazy/LazyVim",
        })
      end,
      desc = "Search (grep) LazyVim",
    },
    {
      "<leader>lS",
      function()
        require("telescope.builtin").live_grep({
          prompt_title = "Grep LazyVim config",
          cwd = vim.fn.stdpath("data") .. "/lazy/LazyVim",
        })
      end,
      desc = "Search (grep) LazyVim",
    },
    {
      "<leader>lf",
      function()
        require("telescope.builtin").find_files({
          prompt_title = "Find Dotfiles",
          cwd = "~/.dotfiles",
        })
      end,
      desc = "Find Dotfiles",
    },
    {
      "<leader>lF",
      function()
        require("telescope.builtin").find_files({
          prompt_title = "Find LazyVim Files",
          cwd = vim.fn.stdpath("data") .. "/lazy/LazyVim",
        })
      end,
      desc = "Find LazyVim Files",
    },
    {
      "<leader>ld",
      function()
        require("telescope.builtin").find_files({
          prompt_title = "Find Dotfiles",
          cwd = "~/.dotfiles",
        })
      end,
      desc = "Find Dotfiles",
    },
    {
      "<leader>le",
      function()
        require("oil").open(vim.fn.stdpath("config") .. "/lua/plugins")
      end,
      desc = "Edit Neovim Plugins Folder",
    },
  },
}
