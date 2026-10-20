return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters = {
      prettier = {
        -- Only honor .prettierignore, so gitignored files still format on save
        prepend_args = { "--ignore-path", ".prettierignore" },
      },
    },
  },
}
