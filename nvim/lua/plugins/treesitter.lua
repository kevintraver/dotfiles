return {
  "nvim-treesitter/nvim-treesitter",
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
        enable = true,
        swap_next = {
          ["<S-l>"] = {
            query = {
              "@parameter.inner",
              "@assignment.inner",
            },
          },
        },
        swap_previous = {
          ["<S-h>"] = {
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
        goto_next_start = {
          ["<tab>"] = {
            query = {
              "@parameter.outer",
              "@assignment.outer",
            },
          },
        },
        goto_previous_start = {
          ["<S-tab>"] = {
            query = {
              "@parameter.outer",
              "@assignment.outer",
            },
          },
        },
      },
    },
    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  },
}
