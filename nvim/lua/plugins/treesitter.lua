-- https://github.com/nvim-treesitter/nvim-treesitter

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
      "prisma",
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
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-Space>",
        node_incremental = "<C-Space>",
        scope_incremental = false,
        node_decremental = "<esc>",
      },
    },
  },
}
