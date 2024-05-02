return {
  "polirritmico/telescope-lazy-plugins.nvim",
  lazy = true,
  config = function()
    require("telescope").setup({
      extensions = {
        lazy_plugins = {
          mappings = {
            ["i"] = {
              ["<A-o>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_url()
                require("telescope.actions").close(bufnr)
              end,
              ["<C-o>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_url()
                require("telescope.actions").close(bufnr)
              end,
              ["<C-g>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_live_grep(
                  bufnr
                )
              end,
              ["<A-e>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_dir(
                  bufnr
                )
              end,
              ["<C-e>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_dir(
                  bufnr
                )
              end,
            },
            ["n"] = {
              ["<A-o>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_url()
                require("telescope.actions").close(bufnr)
              end,
              ["<C-o>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_url()
                require("telescope.actions").close(bufnr)
              end,
              ["<C-g>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_live_grep(
                  bufnr
                )
              end,
              ["<A-e>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_dir(
                  bufnr
                )
              end,
              ["<C-e>"] = function(bufnr)
                require("telescope").extensions.lazy_plugins.actions.open_repo_dir(
                  bufnr
                )
              end,
            },
          },
        },
      },
    })
    require("telescope").load_extension("lazy_plugins")
  end,
  keys = {
    {
      "<A-p>",
      function()
        require("telescope").extensions.lazy_plugins.lazy_plugins()
      end,
      desc = "Lazy Plugin",
    },
  },
}
