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
    -- Fork supports the nvim-treesitter main branch
    "kevintraver/nvim-treesitter-textsubjects",
    dev = true,
    vscode = true,
    opts = {
      -- Default container-outer key is `;`, which shadows `;` -> `:` in visual
      keymaps = {
        ["."] = "textsubjects-smart",
        ["a;"] = "textsubjects-container-outer",
        ["i;"] = "textsubjects-container-inner",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter-textsubjects").configure(opts)
    end,
  },

  {
    "andersevenrud/nvim_context_vt",
    enabled = false,
    config = true,
  },
}
