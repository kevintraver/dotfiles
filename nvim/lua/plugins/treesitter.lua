-- https://github.com/nvim-treesitter/nvim-treesitter

return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = "nvim-treesitter/nvim-treesitter-textobjects",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "javascript",
        "json",
        "ruby",
        "html",
        "lua",
        "vim",
        "vimdoc",
        "query",
      },
      highlight = {
        enable = not vim.g.vscode,
      },
      indent = { enable = true },
      textobjects = {
        select = {
          enable = true,

          -- Automatically jump forward to textobj, similar to targets.vim
          lookahead = true,

          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ["a/"] = "@comment.outer",
            ["i/"] = "@comment.inner",

            ["af"] = "@function.outer",
            ["if"] = "@function.inner",

            ["aa"] = "@parameter.outer",
            ["ia"] = "@parameter.inner",
          },
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
    })
  end,
}
