return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "html",
      "http",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "ruby",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
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
