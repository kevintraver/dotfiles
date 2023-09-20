-- https://github.com/nvim-treesitter/nvim-treesitter

return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "css",
      "diff",
      "gitcommit",
      "html",
      "http",
      "java",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "prisma",
      "python",
      "query",
      "regex",
      "ruby",
      "rust",
      "sql",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    },
    rainbow = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
      },
      swap = {
        enable = true,
        swap_next = {
          ["<A-.>"] = "@parameter.inner",
        },
        swap_previous = {
          ["<A-,>"] = "@parameter.inner",
        },
      },
    },
  },
}
