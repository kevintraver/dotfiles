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
    {
      "<leader>ls",
      function()
        require("telescope").extensions.lazy_plugins.lazy_plugins()
      end,
      desc = "(L)azy Plugin",
    },
  },
}
