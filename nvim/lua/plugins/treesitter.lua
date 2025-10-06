return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    event = { "LazyFile", "VeryLazy" },
    vscode = true,
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "css",
        "diff",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "html",
        "http",
        "java",
        "javascript",
        "jq",
        "jsdoc",
        "json",
        "jsonc",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "mermaid",
        "prisma",
        "python",
        "query",
        "regex",
        "ruby",
        "rust",
        "scss",
        "sql",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      rainbow = {
        enable = true,
      },
      incremental_selection = {
        enable = false,
      },
      textobjects = {
        swap = {
          enable = false,
          swap_next = {
            ["L"] = {
              query = {
                "@parameter.inner",
                "@assignment.inner",
              },
            },
          },
          swap_previous = {
            ["H"] = {
              query = {
                "@parameter.inner",
                "@assignment.inner",
              },
            },
          },
        },
        select = {
          enable = true,
        },
        move = {
          enable = true,
        },
      },
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
    },
    keys = {
      {
        "<Leader>it",
        function()
          vim.treesitter.inspect_tree()
        end,
        desc = "Inspect Tree",
      },
      {
        "<Leader>eq",
        function()
          vim.treesitter.query.edit()
        end,
        desc = "Edit Query",
      },
    },
  },

  {
    "RRethy/nvim-treesitter-textsubjects",
    enabled = true, -- Plugin not compatible with nvim-treesitter main branch
    dev = true,
    -- The plugin internally uses nvim-treesitter.query which no longer exists
    -- TODO: Re-enable when plugin is updated for new treesitter API
  },

  {
    "Mr-LLLLL/treesitter-outer",
    lazy = true,
    dependencies = "nvim-treesitter/nvim-treesitter",
    opts = {
      prev_outer_key = "[{",
      next_outer_key = "]}",
    },
  },

  {
    "andersevenrud/nvim_context_vt",
    enabled = false,
    config = true,
  },
}
