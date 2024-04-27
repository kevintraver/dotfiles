return {
  "andythigpen/nvim-coverage",
  config = {
    signs = {
      covered = { priority = 80 }, -- use a higher value than diagnostics or gitsigns
      uncovered = { priority = 80 },
    },
  },
}
