return {
  "polirritmico/telescope-lazy-plugins.nvim",
  lazy = true,
  config = function()
    require("telescope").setup({
      extensions = {
        lazy_plugins = {
          mappings = {
            ["i"] = {
              ["<C-b>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_url(
                  bufnr
                )
              end,
              ["<C-g>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_live_grep(
                  bufnr
                )
              end,
              ["<C-e>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_dir(
                  bufnr
                )
              end,
              ["<A-b>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_url(
                  bufnr
                )
              end,
              ["<A-g>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_live_grep(
                  bufnr
                )
              end,
              ["<A-e>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_dir(
                  bufnr
                )
              end,
            },
            ["n"] = {
              ["<C-b>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_url(
                  bufnr
                )
              end,
              ["<C-g>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_live_grep(
                  bufnr
                )
              end,
              ["<C-e>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_dir(
                  bufnr
                )
              end,
              ["<A-b>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_url(
                  bufnr
                )
              end,
              ["<A-g>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_live_grep(
                  bufnr
                )
              end,
              ["<A-e>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_dir(
                  bufnr
                )
              end,
            },
          },
          custom_entries = {
            {
              name = "LazyVim",
              filepath = vim.fn.stdpath("config") .. "/lua/plugins/lazyvim.lua",
              line = 2,
              repo_url = "https://github.com/LazyVim/LazyVim",
              repo_dir = vim.fn.stdpath("data") .. "/lazy/LazyVim",
            },
            {
              name = "LazyVim",
              filepath = vim.fn.stdpath("config") .. "/lua/config/lazy.lua",
              line = 19,
              repo_url = "https://github.com/LazyVim/LazyVim",
              repo_dir = vim.fn.stdpath("data") .. "/lazy/LazyVim",
            },
          },
        },
      },
    })
    require("telescope").load_extension("lazy_plugins")
  end,
  keys = {
    {
      "<leader>fl",
      function()
        require("telescope").extensions.lazy_plugins.lazy_plugins()
      end,
      desc = "(L)azy Plugin",
    },
    {
      "<leader>fp",
      function()
        require("telescope").extensions.lazy_plugins.lazy_plugins()
      end,
      desc = "(L)azy Plugin",
    },
    {
      "<leader>lp",
      function()
        require("telescope").extensions.lazy_plugins.lazy_plugins()
      end,
      desc = "(L)azy Plugin",
    },
  },
}
